package com.arthenica.smartexception.java;

import com.arthenica.smartexception.AbstractExceptions;
import com.arthenica.smartexception.ClassLoader;
import com.arthenica.smartexception.PackageLoader;
import com.arthenica.smartexception.StackTraceElementSerializer;
import com.arthenica.smartexception.ThrowableWrapper;
import java.util.Set;
/* loaded from: classes.dex */
public class Exceptions {
    static PackageLoader packageLoader = new JavaPackageLoader();
    static ClassLoader classLoader = new JavaClassLoader();

    static {
        AbstractExceptions.setStackTraceElementSerializer(new JavaStackTraceElementSerializer());
    }

    public static void clearGroupPackages() {
        AbstractExceptions.clearGroupPackages();
    }

    public static void clearIgnorePackages() {
        AbstractExceptions.clearIgnorePackages();
    }

    public static void clearRootPackages() {
        AbstractExceptions.clearRootPackages();
    }

    public static boolean containsCause(Throwable th, Class<?> cls) {
        return AbstractExceptions.containsCause(th, cls);
    }

    public static String getAllMessages(Throwable th) {
        return AbstractExceptions.getAllMessages(th);
    }

    public static Throwable getCause(Throwable th) {
        return AbstractExceptions.getCause(th);
    }

    public static boolean getIgnoreAllCauses() {
        return AbstractExceptions.getIgnoreAllCauses();
    }

    public static boolean getPrintSuppressedExceptions() {
        return AbstractExceptions.getPrintSuppressedExceptions();
    }

    public static StackTraceElementSerializer getStackTraceElementSerializer() {
        return AbstractExceptions.getStackTraceElementSerializer();
    }

    public static String getStackTraceString(Throwable th) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th));
    }

    public static boolean isPrintPackageInformation() {
        return AbstractExceptions.isPrintPackageInformation();
    }

    public static void registerGroupPackage(String str) {
        AbstractExceptions.registerGroupPackage(str);
    }

    public static void registerIgnorePackage(String str, boolean z10) {
        AbstractExceptions.registerIgnorePackage(str, z10);
    }

    public static void registerRootPackage(String str) {
        AbstractExceptions.registerRootPackage(str);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls) {
        return AbstractExceptions.searchCause(th, cls);
    }

    public static void setIgnoreAllCauses(boolean z10) {
        AbstractExceptions.setIgnoreAllCauses(z10);
    }

    public static void setPrintPackageInformation(boolean z10) {
        AbstractExceptions.setPrintPackageInformation(z10);
    }

    public static void setPrintSuppressedExceptions(boolean z10) {
        AbstractExceptions.setPrintSuppressedExceptions(z10);
    }

    public static void setStackTraceElementSerializer(StackTraceElementSerializer stackTraceElementSerializer) {
        AbstractExceptions.setStackTraceElementSerializer(stackTraceElementSerializer);
    }

    public static boolean containsCause(Throwable th, Class<?> cls, String str) {
        return AbstractExceptions.containsCause(th, cls, str);
    }

    public static Throwable getCause(Throwable th, int i10) {
        return AbstractExceptions.getCause(th, i10);
    }

    public static String getStackTraceString(Throwable th, boolean z10) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), z10);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, String str) {
        return AbstractExceptions.searchCause(th, cls, str);
    }

    public static String getStackTraceString(Throwable th, Set<String> set, Set<String> set2, Set<String> set3) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), set, set2, set3);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, String str, int i10) {
        return AbstractExceptions.searchCause(th, cls, str, i10);
    }

    public static String getStackTraceString(Throwable th, Set<String> set, Set<String> set2, Set<String> set3, boolean z10) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), set, set2, set3, z10);
    }

    public static Throwable searchCause(Throwable th, Class<?> cls, int i10) {
        return AbstractExceptions.searchCause(th, cls, i10);
    }

    public static String getStackTraceString(Throwable th, Set<String> set, Set<String> set2, Set<String> set3, boolean z10, boolean z11) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), set, set2, set3, z10, z11);
    }

    public static String getStackTraceString(Throwable th, Set<String> set, Set<String> set2, Set<String> set3, boolean z10, boolean z11, boolean z12) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), set, set2, set3, z10, z11, z12);
    }

    public static String getStackTraceString(Throwable th, String str) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), str);
    }

    public static String getStackTraceString(Throwable th, String str, String str2) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), str, str2);
    }

    public static String getStackTraceString(Throwable th, int i10) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), i10);
    }

    public static String getStackTraceString(Throwable th, int i10, boolean z10) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), i10, z10);
    }

    public static String getStackTraceString(Throwable th, int i10, boolean z10, boolean z11) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), i10, z10, z11);
    }

    public static String getStackTraceString(Throwable th, int i10, boolean z10, boolean z11, boolean z12) {
        return AbstractExceptions.getStackTraceString(new ThrowableWrapper(th), i10, z10, z11, z12);
    }
}
