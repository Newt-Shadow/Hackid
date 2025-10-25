package com.arthenica.smartexception;
/* loaded from: classes.dex */
public interface StackTraceElementSerializer {
    String getModuleName(StackTraceElement stackTraceElement);

    String getNativeMethodDefinition();

    String getPackageInformation(StackTraceElement stackTraceElement);

    String getUnknownSourceDefinition();

    String toString(StackTraceElement stackTraceElement, boolean z10, boolean z11);
}
