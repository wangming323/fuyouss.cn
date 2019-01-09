package com.team323.common.util;



import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateSerializerUtil extends JsonSerializer<Date> {
    /**
     * 负责将一个对象转换为json串
     */

    @Override
    public void serialize(Date value, JsonGenerator gen, SerializerProvider serializers) throws IOException, JsonProcessingException {
        //构建日期转换对象
        SimpleDateFormat sdf =
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //将日期转换为指定格式
        String dateStr = sdf.format(value);
        //将dateStr串写入到json串中
        gen.writeString(dateStr);
    }
}
