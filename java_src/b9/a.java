package b9;

import com.google.gson.internal.f0;
import com.google.gson.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final b f4595a;

    /* loaded from: classes.dex */
    private static abstract class b {
        private b() {
        }

        public abstract Method a(Class cls, Field field);

        abstract Constructor b(Class cls);

        abstract String[] c(Class cls);

        abstract boolean d(Class cls);
    }

    /* loaded from: classes.dex */
    private static class c extends b {
        private c() {
            super();
        }

        @Override // b9.a.b
        public Method a(Class cls, Field field) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // b9.a.b
        Constructor b(Class cls) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // b9.a.b
        String[] c(Class cls) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // b9.a.b
        boolean d(Class cls) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    private static class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final Method f4596a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f4597b;

        /* renamed from: c  reason: collision with root package name */
        private final Method f4598c;

        /* renamed from: d  reason: collision with root package name */
        private final Method f4599d;

        @Override // b9.a.b
        public Method a(Class cls, Field field) {
            try {
                return cls.getMethod(field.getName(), new Class[0]);
            } catch (ReflectiveOperationException e10) {
                throw a.d(e10);
            }
        }

        @Override // b9.a.b
        public Constructor b(Class cls) {
            try {
                Object[] objArr = (Object[]) this.f4597b.invoke(cls, new Object[0]);
                Class<?>[] clsArr = new Class[objArr.length];
                for (int i10 = 0; i10 < objArr.length; i10++) {
                    clsArr[i10] = (Class) this.f4599d.invoke(objArr[i10], new Object[0]);
                }
                return cls.getDeclaredConstructor(clsArr);
            } catch (ReflectiveOperationException e10) {
                throw a.d(e10);
            }
        }

        @Override // b9.a.b
        String[] c(Class cls) {
            try {
                Object[] objArr = (Object[]) this.f4597b.invoke(cls, new Object[0]);
                String[] strArr = new String[objArr.length];
                for (int i10 = 0; i10 < objArr.length; i10++) {
                    strArr[i10] = (String) this.f4598c.invoke(objArr[i10], new Object[0]);
                }
                return strArr;
            } catch (ReflectiveOperationException e10) {
                throw a.d(e10);
            }
        }

        @Override // b9.a.b
        boolean d(Class cls) {
            try {
                return ((Boolean) this.f4596a.invoke(cls, new Object[0])).booleanValue();
            } catch (ReflectiveOperationException e10) {
                throw a.d(e10);
            }
        }

        private d() {
            super();
            this.f4596a = Class.class.getMethod("isRecord", new Class[0]);
            this.f4597b = Class.class.getMethod("getRecordComponents", new Class[0]);
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            this.f4598c = cls.getMethod("getName", new Class[0]);
            this.f4599d = cls.getMethod("getType", new Class[0]);
        }
    }

    static {
        b cVar;
        try {
            cVar = new d();
        } catch (ReflectiveOperationException unused) {
            cVar = new c();
        }
        f4595a = cVar;
    }

    private static void b(AccessibleObject accessibleObject, StringBuilder sb2) {
        Class<?>[] parameterTypes;
        sb2.append('(');
        if (accessibleObject instanceof Method) {
            parameterTypes = ((Method) accessibleObject).getParameterTypes();
        } else {
            parameterTypes = ((Constructor) accessibleObject).getParameterTypes();
        }
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(parameterTypes[i10].getSimpleName());
        }
        sb2.append(')');
    }

    public static String c(Constructor constructor) {
        StringBuilder sb2 = new StringBuilder(constructor.getDeclaringClass().getName());
        b(constructor, sb2);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException d(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.12.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", reflectiveOperationException);
    }

    public static RuntimeException e(IllegalAccessException illegalAccessException) {
        throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.12.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", illegalAccessException);
    }

    public static String f(Field field) {
        return field.getDeclaringClass().getName() + "#" + field.getName();
    }

    public static String g(AccessibleObject accessibleObject, boolean z10) {
        String str;
        if (accessibleObject instanceof Field) {
            str = "field '" + f((Field) accessibleObject) + "'";
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb2 = new StringBuilder(method.getName());
            b(method, sb2);
            str = "method '" + method.getDeclaringClass().getName() + "#" + sb2.toString() + "'";
        } else if (accessibleObject instanceof Constructor) {
            str = "constructor '" + c((Constructor) accessibleObject) + "'";
        } else {
            str = "<unknown AccessibleObject> " + accessibleObject.toString();
        }
        if (z10 && Character.isLowerCase(str.charAt(0))) {
            return Character.toUpperCase(str.charAt(0)) + str.substring(1);
        }
        return str;
    }

    public static Method h(Class cls, Field field) {
        return f4595a.a(cls, field);
    }

    public static Constructor i(Class cls) {
        return f4595a.b(cls);
    }

    private static String j(Exception exc) {
        String str;
        if (exc.getClass().getName().equals("java.lang.reflect.InaccessibleObjectException")) {
            String message = exc.getMessage();
            if (message != null && message.contains("to module com.google.gson")) {
                str = "reflection-inaccessible-to-module-gson";
            } else {
                str = "reflection-inaccessible";
            }
            return "\nSee " + f0.a(str);
        }
        return "";
    }

    public static String[] k(Class cls) {
        return f4595a.c(cls);
    }

    public static boolean l(Class cls) {
        if (!n(cls) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return true;
        }
        return false;
    }

    public static boolean m(Class cls) {
        return f4595a.d(cls);
    }

    public static boolean n(Class cls) {
        return Modifier.isStatic(cls.getModifiers());
    }

    public static void o(AccessibleObject accessibleObject) {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e10) {
            String g10 = g(accessibleObject, false);
            throw new j("Failed making " + g10 + " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type." + j(e10), e10);
        }
    }

    public static String p(Constructor constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e10) {
            return "Failed making constructor '" + c(constructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e10.getMessage() + j(e10);
        }
    }
}
