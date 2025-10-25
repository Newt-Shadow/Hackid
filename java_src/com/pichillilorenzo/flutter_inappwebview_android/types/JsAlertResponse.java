package com.pichillilorenzo.flutter_inappwebview_android.types;

import java.util.Map;
/* loaded from: classes.dex */
public class JsAlertResponse {
    private Integer action;
    private String confirmButtonTitle;
    private boolean handledByClient;
    private String message;

    public JsAlertResponse(String str, String str2, boolean z10, Integer num) {
        this.message = str;
        this.confirmButtonTitle = str2;
        this.handledByClient = z10;
        this.action = num;
    }

    public static JsAlertResponse fromMap(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        return new JsAlertResponse((String) map.get("message"), (String) map.get("confirmButtonTitle"), ((Boolean) map.get("handledByClient")).booleanValue(), (Integer) map.get("action"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JsAlertResponse jsAlertResponse = (JsAlertResponse) obj;
        if (this.handledByClient != jsAlertResponse.handledByClient) {
            return false;
        }
        String str = this.message;
        if (str == null ? jsAlertResponse.message != null : !str.equals(jsAlertResponse.message)) {
            return false;
        }
        String str2 = this.confirmButtonTitle;
        if (str2 == null ? jsAlertResponse.confirmButtonTitle != null : !str2.equals(jsAlertResponse.confirmButtonTitle)) {
            return false;
        }
        Integer num = this.action;
        Integer num2 = jsAlertResponse.action;
        if (num != null) {
            return num.equals(num2);
        }
        if (num2 == null) {
            return true;
        }
        return false;
    }

    public Integer getAction() {
        return this.action;
    }

    public String getConfirmButtonTitle() {
        return this.confirmButtonTitle;
    }

    public String getMessage() {
        return this.message;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.message;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        String str2 = this.confirmButtonTitle;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (((i13 + i11) * 31) + (this.handledByClient ? 1 : 0)) * 31;
        Integer num = this.action;
        if (num != null) {
            i12 = num.hashCode();
        }
        return i14 + i12;
    }

    public boolean isHandledByClient() {
        return this.handledByClient;
    }

    public void setAction(Integer num) {
        this.action = num;
    }

    public void setConfirmButtonTitle(String str) {
        this.confirmButtonTitle = str;
    }

    public void setHandledByClient(boolean z10) {
        this.handledByClient = z10;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "JsAlertResponse{message='" + this.message + "', confirmButtonTitle='" + this.confirmButtonTitle + "', handledByClient=" + this.handledByClient + ", action=" + this.action + '}';
    }
}
