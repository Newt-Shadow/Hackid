package hd;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.e;
import kotlin.jvm.internal.m;
import pd.c;
/* loaded from: classes2.dex */
public abstract class a {
    public static final Class a(c cVar) {
        m.e(cVar, "<this>");
        Class e10 = ((e) cVar).e();
        m.c(e10, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return e10;
    }

    public static final Class b(c cVar) {
        m.e(cVar, "<this>");
        Class e10 = ((e) cVar).e();
        if (!e10.isPrimitive()) {
            m.c(e10, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return e10;
        }
        String name = e10.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    e10 = Double.class;
                    break;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    e10 = Integer.class;
                    break;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    e10 = Byte.class;
                    break;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    e10 = Character.class;
                    break;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    e10 = Long.class;
                    break;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    e10 = Void.class;
                    break;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    e10 = Boolean.class;
                    break;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    e10 = Float.class;
                    break;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    e10 = Short.class;
                    break;
                }
                break;
        }
        m.c(e10, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return e10;
    }

    public static final c c(Class cls) {
        m.e(cls, "<this>");
        return d0.b(cls);
    }
}
