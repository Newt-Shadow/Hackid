package com.arthenica.ffmpegkit;
/* loaded from: classes.dex */
public class ReturnCode {
    public static int CANCEL = 255;
    public static int SUCCESS;
    private final int value;

    public ReturnCode(int i10) {
        this.value = i10;
    }

    public static boolean isCancel(ReturnCode returnCode) {
        if (returnCode != null && returnCode.getValue() == CANCEL) {
            return true;
        }
        return false;
    }

    public static boolean isSuccess(ReturnCode returnCode) {
        if (returnCode != null && returnCode.getValue() == SUCCESS) {
            return true;
        }
        return false;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isValueCancel() {
        if (this.value == CANCEL) {
            return true;
        }
        return false;
    }

    public boolean isValueError() {
        int i10 = this.value;
        if (i10 != SUCCESS && i10 != CANCEL) {
            return true;
        }
        return false;
    }

    public boolean isValueSuccess() {
        if (this.value == SUCCESS) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.valueOf(this.value);
    }
}
