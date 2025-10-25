package com.arthenica.smartexception;

import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class AbstractExceptions {
    public static final boolean DEFAULT_IGNORE_ALL_CAUSES = false;
    public static final int DEFAULT_MAX_DEPTH = 10;
    public static final boolean DEFAULT_PRINT_MODULE_NAME = true;
    public static final boolean DEFAULT_PRINT_PACKAGE_INFORMATION = false;
    public static final boolean DEFAULT_PRINT_SUPPRESSED_EXCEPTIONS = true;
    static StackTraceElementSerializer stackTraceElementSerializer;
    static final Set<String> rootPackageSet = Collections.synchronizedSet(new HashSet());
    static final Set<String> groupPackageSet = Collections.synchronizedSet(new HashSet());
    static final Set<String> ignorePackageSet = Collections.synchronizedSet(new HashSet());
    static final Set<String> ignoreCausePackageSet = Collections.synchronizedSet(new HashSet());
    static boolean ignoreAllCauses = false;
    static boolean printPackageInformation = false;
    static boolean printModuleName = true;
    static boolean printSuppressedExceptions = true;

    public static int appendStackTraceGroupElement(StringBuilder sb2, String str, int i10, StackTraceElement stackTraceElement, boolean z10, boolean z11, String str2) {
        if (i10 > 0) {
            if (stackTraceElementSerializer != null) {
                sb2.append(str2);
                if (i10 == 1) {
                    sb2.append(stackTraceElementSerializer.toString(stackTraceElement, z10, z11));
                    return 0;
                }
                sb2.append(String.format("%s%s ... %d more", stackTraceElementSerializer.getModuleName(stackTraceElement), str, Integer.valueOf(i10 - 1)));
                if (z11) {
                    sb2.append(stackTraceElementSerializer.getPackageInformation(stackTraceElement));
                    return 0;
                }
                return 0;
            }
            throw new IllegalArgumentException("Stack trace element serializer not initialized.");
        }
        return 0;
    }

    public static void clearGroupPackages() {
        groupPackageSet.clear();
    }

    public static void clearIgnorePackages() {
        ignorePackageSet.clear();
        ignoreCausePackageSet.clear();
    }

    public static void clearRootPackages() {
        rootPackageSet.clear();
    }

    public static boolean containsCause(Throwable th, Class<?> cls) {
        return containsCause(th, cls, null);
    }

    public static boolean containsPackage(String str, Set<String> set) {
        if (getContainingPackage(str, set) != null) {
            return true;
        }
        return false;
    }

    public static String getAllMessages(Throwable th) {
        StringBuilder sb2 = new StringBuilder();
        getAllMessages(th, sb2);
        return sb2.toString();
    }

    public static Throwable getCause(Throwable th) {
        return getCause(th, 10);
    }

    public static String getContainingPackage(String str, Set<String> set) {
        for (String str2 : set) {
            if (str.startsWith(str2)) {
                return str2;
            }
        }
        return null;
    }

    public static boolean getIgnoreAllCauses() {
        return ignoreAllCauses;
    }

    public static boolean getPrintModuleName() {
        return printModuleName;
    }

    public static boolean getPrintSuppressedExceptions() {
        return printSuppressedExceptions;
    }

    public static StackTraceElement[] getStackTrace(ThrowableWrapper throwableWrapper, int i10) {
        ArrayList arrayList = new ArrayList();
        if (throwableWrapper != null) {
            StackTraceElementWrapper[] stackTrace = throwableWrapper.getStackTrace();
            for (int i11 = 0; i11 < stackTrace.length && i11 < i10; i11++) {
                arrayList.add(stackTrace[i11].getStackTraceElement());
            }
        }
        return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]);
    }

    public static StackTraceElementSerializer getStackTraceElementSerializer() {
        return stackTraceElementSerializer;
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper) {
        return getStackTraceString(throwableWrapper, rootPackageSet, groupPackageSet, ignorePackageSet, 0, ignoreAllCauses, printPackageInformation);
    }

    public static boolean isEmpty(String str) {
        if (str == null || str.trim().length() == 0) {
            return true;
        }
        return false;
    }

    public static boolean isPrintPackageInformation() {
        return printPackageInformation;
    }

    public static String libraryName(Class<?> cls) {
        String url;
        int lastIndexOf;
        if (cls != null) {
            try {
                java.lang.ClassLoader classLoader = cls.getClassLoader();
                URL resource = classLoader.getResource(cls.getName().replace('.', '/') + ".class");
                if (resource != null && (lastIndexOf = (url = resource.toString()).lastIndexOf(33)) > 0) {
                    String substring = url.substring(0, lastIndexOf);
                    int lastIndexOf2 = substring.lastIndexOf(47);
                    if (lastIndexOf2 > 0) {
                        substring = substring.substring(lastIndexOf2 + 1);
                    }
                    int lastIndexOf3 = substring.lastIndexOf(92);
                    if (lastIndexOf3 > 0) {
                        return substring.substring(lastIndexOf3 + 1);
                    }
                    return substring;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static String packageInformation(String str, String str2) {
        boolean z10;
        boolean z11 = true;
        if (str != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (str2 == null) {
            z11 = false;
        }
        if (!z10 && !z11) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" [");
        if (z10) {
            sb2.append(str);
        }
        if (z11) {
            if (z10) {
                if (!str.contains(str2)) {
                    sb2.append(":");
                    sb2.append(str2);
                }
            } else {
                sb2.append(str2);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public static String packageName(String str) {
        int lastIndexOf;
        if (str == null || (lastIndexOf = str.lastIndexOf(".")) < 0) {
            return "";
        }
        return str.substring(0, lastIndexOf);
    }

    public static void registerGroupPackage(String str) {
        groupPackageSet.add(str);
    }

    public static void registerIgnorePackage(String str, boolean z10) {
        ignorePackageSet.add(str);
        if (z10) {
            ignoreCausePackageSet.add(str);
        }
    }

    public static void registerRootPackage(String str) {
        rootPackageSet.add(str);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls) {
        return searchCause(th, cls, null, 10);
    }

    public static void setIgnoreAllCauses(boolean z10) {
        ignoreAllCauses = z10;
    }

    public static void setPrintModuleName(boolean z10) {
        printModuleName = z10;
    }

    public static void setPrintPackageInformation(boolean z10) {
        printPackageInformation = z10;
    }

    public static void setPrintSuppressedExceptions(boolean z10) {
        printSuppressedExceptions = z10;
    }

    public static void setStackTraceElementSerializer(StackTraceElementSerializer stackTraceElementSerializer2) {
        stackTraceElementSerializer = stackTraceElementSerializer2;
    }

    public static String version(PackageLoader packageLoader, Class<?> cls, String str) {
        try {
            Package r02 = cls.getPackage();
            if (r02 != null) {
                return r02.getImplementationVersion();
            }
            Package r12 = packageLoader.getPackage(cls.getClassLoader(), str);
            if (r12 != null) {
                return r12.getImplementationVersion();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean containsCause(Throwable th, Class<?> cls, String str) {
        return searchCause(th, cls, str, 10) != null;
    }

    public static Throwable getCause(Throwable th, int i10) {
        Throwable cause;
        if (th == null) {
            return null;
        }
        return (i10 > 0 && (cause = th.getCause()) != null) ? getCause(cause, i10 - 1) : th;
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, boolean z10) {
        return getStackTraceString(throwableWrapper, rootPackageSet, groupPackageSet, ignorePackageSet, 0, z10, printPackageInformation);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, String str) {
        return searchCause(th, cls, str, 10);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3) {
        return getStackTraceString(throwableWrapper, set, set2, set3, 0, ignoreAllCauses, printPackageInformation);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, String str, int i10) {
        Throwable cause;
        if (th == null) {
            return null;
        }
        if (isEmpty(str)) {
            if (th.getClass().equals(cls)) {
                return th;
            }
        } else if (th.getClass().equals(cls) && getAllMessages(th).toLowerCase().contains(str.toLowerCase())) {
            return th;
        }
        if (i10 > 0 && (cause = th.getCause()) != null) {
            return searchCause(cause, cls, str, i10 - 1);
        }
        return null;
    }

    public static void getAllMessages(Throwable th, StringBuilder sb2) {
        if (th != null) {
            String message = th.getMessage();
            if (!isEmpty(message)) {
                if (sb2.length() != 0) {
                    sb2.append(System.lineSeparator());
                    sb2.append(" - Caused by: ");
                }
                sb2.append(message);
            }
            getAllMessages(th.getCause(), sb2);
        }
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, boolean z10) {
        return getStackTraceString(throwableWrapper, set, set2, set3, 0, z10, printPackageInformation);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, boolean z10, boolean z11) {
        return getStackTraceString(throwableWrapper, set, set2, set3, 0, z10, z11);
    }

    public static StackTraceElement[] getStackTrace(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2) {
        StackTraceElementWrapper[] stackTrace;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (throwableWrapper != null) {
            for (StackTraceElementWrapper stackTraceElementWrapper : throwableWrapper.getStackTrace()) {
                String className = stackTraceElementWrapper.getStackTraceElement().getClassName();
                if (!isEmpty(className)) {
                    if (containsPackage(className, set)) {
                        arrayList.addAll(arrayList2);
                        arrayList.add(stackTraceElementWrapper.getStackTraceElement());
                    } else if (!containsPackage(className, set2)) {
                        arrayList2.add(stackTraceElementWrapper.getStackTraceElement());
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(arrayList2);
        }
        return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, boolean z10, boolean z11, boolean z12) {
        return getStackTraceString(throwableWrapper, set, set2, set3, 0, z10, z11, printModuleName, z12);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, String str) {
        return getStackTraceString(throwableWrapper, Collections.singleton(str), new HashSet(), new HashSet(), 0, ignoreAllCauses, printPackageInformation);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, String str, String str2) {
        return getStackTraceString(throwableWrapper, Collections.singleton(str), Collections.singleton(str2), new HashSet(), 0, ignoreAllCauses, printPackageInformation);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, int i10) {
        Throwable cause;
        if (th == null) {
            return null;
        }
        if (th.getClass().equals(cls)) {
            return th;
        }
        if (i10 > 0 && (cause = th.getCause()) != null) {
            return searchCause(cause, cls, i10 - 1);
        }
        return null;
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, int i10) {
        return getStackTraceString(throwableWrapper, new HashSet(), new HashSet(), new HashSet(), i10, ignoreAllCauses, printPackageInformation);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, int i10, boolean z10) {
        return getStackTraceString(throwableWrapper, new HashSet(), new HashSet(), new HashSet(), i10, z10, printPackageInformation);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, int i10, boolean z10, boolean z11) {
        return getStackTraceString(throwableWrapper, new HashSet(), new HashSet(), new HashSet(), i10, z10, z11);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, int i10, boolean z10, boolean z11, boolean z12) {
        return getStackTraceString(throwableWrapper, new HashSet(), new HashSet(), new HashSet(), i10, z10, z11, printModuleName, z12);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, int i10, boolean z10, boolean z11) {
        return getStackTraceString(throwableWrapper, set, set2, set3, i10, z10, z11, printModuleName);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, int i10, boolean z10, boolean z11, boolean z12) {
        return getStackTraceString(throwableWrapper, false, false, set, set2, set3, i10, z10, z11, z12, printSuppressedExceptions);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, Set<String> set, Set<String> set2, Set<String> set3, int i10, boolean z10, boolean z11, boolean z12, boolean z13) {
        return getStackTraceString(throwableWrapper, false, false, set, set2, set3, i10, z10, z11, z12, z13);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, boolean z10, boolean z11, Set<String> set, Set<String> set2, Set<String> set3, int i10, boolean z12, boolean z13, boolean z14, boolean z15) {
        return getStackTraceString(throwableWrapper, "", z10, z11, set, set2, set3, i10, z12, z13, z14, z15);
    }

    public static String getStackTraceString(ThrowableWrapper throwableWrapper, String str, boolean z10, boolean z11, Set<String> set, Set<String> set2, Set<String> set3, int i10, boolean z12, boolean z13, boolean z14, boolean z15) {
        StackTraceElement[] stackTrace;
        StringBuilder sb2;
        int i11;
        StackTraceElement[] stackTraceElementArr;
        StringBuilder sb3 = new StringBuilder();
        if (throwableWrapper == null) {
            return "";
        }
        String className = throwableWrapper.getClassName();
        if (i10 > 0) {
            stackTrace = getStackTrace(throwableWrapper, i10);
        } else {
            stackTrace = getStackTrace(throwableWrapper, set, set3);
        }
        StackTraceElement[] stackTraceElementArr2 = stackTrace;
        String message = throwableWrapper.getMessage();
        if (isEmpty(message)) {
            message = throwableWrapper.getMessage();
        }
        if (z10) {
            sb3.append(System.lineSeparator());
            sb3.append(str);
            sb3.append("Caused by: ");
        } else if (z11) {
            sb3.append(System.lineSeparator());
            sb3.append(str);
            sb3.append("Suppressed: ");
        }
        sb3.append(className);
        if (!isEmpty(message)) {
            sb3.append(": ");
            sb3.append(message);
        }
        int length = stackTraceElementArr2.length;
        int i12 = 0;
        int i13 = 0;
        String str2 = null;
        StackTraceElement stackTraceElement = null;
        while (i13 < length) {
            StackTraceElement stackTraceElement2 = stackTraceElementArr2[i13];
            String containingPackage = getContainingPackage(stackTraceElement2.getClassName(), set2);
            if (containingPackage != null) {
                if (containingPackage.equals(str2)) {
                    i11 = i13;
                    stackTraceElementArr = stackTraceElementArr2;
                    i12++;
                } else {
                    stackTraceElementArr = stackTraceElementArr2;
                    i11 = i13;
                    appendStackTraceGroupElement(sb3, str2, i12, stackTraceElement, z14, z13, str);
                    sb3.append(System.lineSeparator());
                    sb3.append(str);
                    sb3.append("\tat ");
                    i12 = 1;
                    stackTraceElement = stackTraceElement2;
                    str2 = containingPackage;
                }
            } else {
                i11 = i13;
                stackTraceElementArr = stackTraceElementArr2;
                int appendStackTraceGroupElement = appendStackTraceGroupElement(sb3, str2, i12, stackTraceElement, z14, z13, str);
                sb3.append(System.lineSeparator());
                sb3.append(str);
                sb3.append("\tat ");
                if (stackTraceElementSerializer != null) {
                    sb3.append(str);
                    sb3.append(stackTraceElementSerializer.toString(stackTraceElement2, z14, z13));
                    i12 = appendStackTraceGroupElement;
                    str2 = null;
                } else {
                    throw new IllegalArgumentException("Stack trace element serializer not initialized.");
                }
            }
            i13 = i11 + 1;
            stackTraceElementArr2 = stackTraceElementArr;
        }
        appendStackTraceGroupElement(sb3, str2, i12, stackTraceElement, z14, z13, str);
        ThrowableWrapper[] suppressed = throwableWrapper.getSuppressed();
        if (suppressed != null && suppressed.length > 0 && z15) {
            int length2 = suppressed.length;
            int i14 = 0;
            while (i14 < length2) {
                StringBuilder sb4 = sb3;
                sb4.append(getStackTraceString(suppressed[i14], str + "\t", false, true, set, set2, set3, i10, z12, z13, z14, z15));
                i14++;
                className = className;
                sb3 = sb4;
            }
        }
        String str3 = className;
        StringBuilder sb5 = sb3;
        ThrowableWrapper cause = throwableWrapper.getCause();
        if (cause == null || containsPackage(str3, ignoreCausePackageSet) || z12) {
            sb2 = sb5;
        } else {
            sb2 = sb5;
            sb2.append(getStackTraceString(cause, str, true, false, set, set2, set3, i10, z12, z13, z14, z15));
        }
        return sb2.toString();
    }
}
