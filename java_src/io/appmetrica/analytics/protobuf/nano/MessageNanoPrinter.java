package io.appmetrica.analytics.protobuf.nano;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class MessageNanoPrinter {
    private static final String INDENT = "  ";
    private static final int MAX_STRING_LEN = 200;

    private MessageNanoPrinter() {
    }

    private static void appendQuotedBytes(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append('\"');
        for (byte b10 : bArr) {
            int i10 = b10 & ForkServer.ERROR;
            if (i10 != 92 && i10 != 34) {
                if (i10 >= 32 && i10 < 127) {
                    stringBuffer.append((char) i10);
                } else {
                    stringBuffer.append(String.format("\\%03o", Integer.valueOf(i10)));
                }
            } else {
                stringBuffer.append('\\');
                stringBuffer.append((char) i10);
            }
        }
        stringBuffer.append('\"');
    }

    private static String deCamelCaseify(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (i10 == 0) {
                stringBuffer.append(Character.toLowerCase(charAt));
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_');
                stringBuffer.append(Character.toLowerCase(charAt));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    private static String escapeString(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt >= ' ' && charAt <= '~' && charAt != '\"' && charAt != '\'') {
                sb2.append(charAt);
            } else {
                sb2.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            }
        }
        return sb2.toString();
    }

    public static <T extends MessageNano> String print(T t10) {
        if (t10 == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            print(null, t10, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e10) {
            return "Error printing proto: " + e10.getMessage();
        } catch (InvocationTargetException e11) {
            return "Error printing proto: " + e11.getMessage();
        }
    }

    private static String sanitizeString(String str) {
        if (!str.startsWith("http") && str.length() > MAX_STRING_LEN) {
            str = str.substring(0, MAX_STRING_LEN) + "[...]";
        }
        return escapeString(str);
    }

    private static void print(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        Field[] fields;
        if (obj == null) {
            return;
        }
        if (obj instanceof MessageNano) {
            int length = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(deCamelCaseify(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append(INDENT);
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (type.isArray()) {
                        if (type.getComponentType() == Byte.TYPE) {
                            print(name, obj2, stringBuffer, stringBuffer2);
                        } else {
                            int length2 = obj2 == null ? 0 : Array.getLength(obj2);
                            for (int i10 = 0; i10 < length2; i10++) {
                                print(name, Array.get(obj2, i10), stringBuffer, stringBuffer2);
                            }
                        }
                    } else {
                        print(name, obj2, stringBuffer, stringBuffer2);
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String substring = name2.substring(3);
                    try {
                        if (((Boolean) cls.getMethod("has" + substring, new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            print(substring, cls.getMethod("get" + substring, new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        } else if (obj instanceof Map) {
            String deCamelCaseify = deCamelCaseify(str);
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(deCamelCaseify);
                stringBuffer2.append(" <\n");
                int length3 = stringBuffer.length();
                stringBuffer.append(INDENT);
                print("key", entry.getKey(), stringBuffer, stringBuffer2);
                print("value", entry.getValue(), stringBuffer, stringBuffer2);
                stringBuffer.setLength(length3);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        } else {
            String deCamelCaseify2 = deCamelCaseify(str);
            stringBuffer2.append(stringBuffer);
            stringBuffer2.append(deCamelCaseify2);
            stringBuffer2.append(": ");
            if (obj instanceof String) {
                String sanitizeString = sanitizeString((String) obj);
                stringBuffer2.append("\"");
                stringBuffer2.append(sanitizeString);
                stringBuffer2.append("\"");
            } else if (obj instanceof byte[]) {
                appendQuotedBytes((byte[]) obj, stringBuffer2);
            } else {
                stringBuffer2.append(obj);
            }
            stringBuffer2.append("\n");
        }
    }
}
