package com.arthenica.smartexception.java;

import com.arthenica.smartexception.AbstractExceptions;
import com.arthenica.smartexception.StackTraceElementSerializer;
/* loaded from: classes.dex */
public class JavaStackTraceElementSerializer implements StackTraceElementSerializer {
    @Override // com.arthenica.smartexception.StackTraceElementSerializer
    public String getModuleName(StackTraceElement stackTraceElement) {
        return "";
    }

    @Override // com.arthenica.smartexception.StackTraceElementSerializer
    public String getNativeMethodDefinition() {
        return "(Native Method)";
    }

    @Override // com.arthenica.smartexception.StackTraceElementSerializer
    public String getPackageInformation(StackTraceElement stackTraceElement) {
        StringBuilder sb2 = new StringBuilder();
        String className = stackTraceElement.getClassName();
        Class<?> loadClass = Exceptions.classLoader.loadClass(className);
        if (loadClass != null) {
            sb2.append(AbstractExceptions.packageInformation(AbstractExceptions.libraryName(loadClass), AbstractExceptions.version(Exceptions.packageLoader, loadClass, AbstractExceptions.packageName(className))));
        }
        return sb2.toString();
    }

    @Override // com.arthenica.smartexception.StackTraceElementSerializer
    public String getUnknownSourceDefinition() {
        return "(Unknown Source)";
    }

    @Override // com.arthenica.smartexception.StackTraceElementSerializer
    public String toString(StackTraceElement stackTraceElement, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(stackTraceElement.getClassName());
        sb2.append(".");
        sb2.append(stackTraceElement.getMethodName());
        if (stackTraceElement.isNativeMethod()) {
            sb2.append(getNativeMethodDefinition());
        } else if (stackTraceElement.getFileName() != null && stackTraceElement.getFileName().length() > 0) {
            sb2.append("(");
            sb2.append(stackTraceElement.getFileName());
            if (stackTraceElement.getLineNumber() >= 0) {
                sb2.append(":");
                sb2.append(stackTraceElement.getLineNumber());
            }
            sb2.append(")");
        } else {
            sb2.append(getUnknownSourceDefinition());
        }
        if (z11) {
            sb2.append(getPackageInformation(stackTraceElement));
        }
        return sb2.toString();
    }
}
