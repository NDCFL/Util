package com.dt.controller;

import com.dt.common.Message;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

@Controller
@RequestMapping("utils")
public class UtilController  {
    @ResponseBody
    @RequestMapping("getInfo")
    public Message getInfo(String url, String param) throws UnsupportedEncodingException {
        try {
            URL str = new URL(url);// 创建连接
            HttpURLConnection connection = (HttpURLConnection) str.openConnection();
            connection.setDoOutput(true);
            connection.setDoInput(true);
            connection.setUseCaches(false);
            connection.setInstanceFollowRedirects(true);
            connection.setRequestMethod("POST"); // 设置请求方式
            connection.setRequestProperty("Accept", "application/json"); // 设置接收数据的格式
            connection.setRequestProperty("Accept-Encoding", "identity");
            connection.setRequestProperty("User-Agent", " Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36");
            connection.connect();
            OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream(), "UTF-8"); // utf-8编码
            out.append(param);
            out.flush();
            out.close();

            int code = connection.getResponseCode();
            System.out.println(code+"========");
            InputStream is = null;
            if (code == 200) {
                is = connection.getInputStream();
            } else {
                is = connection.getErrorStream();
            }
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int len = 0;
            int count = 0;
            while (-1 != (len = is.read(buffer))) {
                baos.write(buffer, 0, len);
            }
            return Message.success(baos.toString("utf-8"));
        } catch (IOException e) {
            e.printStackTrace();
            return Message.fail("失败!");
        }
    }
}
