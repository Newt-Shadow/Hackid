package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
abstract class t3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(e1 e1Var) {
        StringBuilder sb2 = new StringBuilder(e1Var.i());
        for (int i10 = 0; i10 < e1Var.i(); i10++) {
            byte d10 = e1Var.d(i10);
            if (d10 != 34) {
                if (d10 != 39) {
                    if (d10 != 92) {
                        switch (d10) {
                            case 7:
                                sb2.append("\\a");
                                continue;
                            case 8:
                                sb2.append("\\b");
                                continue;
                            case 9:
                                sb2.append("\\t");
                                continue;
                            case 10:
                                sb2.append("\\n");
                                continue;
                            case 11:
                                sb2.append("\\v");
                                continue;
                            case 12:
                                sb2.append("\\f");
                                continue;
                            case 13:
                                sb2.append("\\r");
                                continue;
                            default:
                                if (d10 >= 32 && d10 <= 126) {
                                    sb2.append((char) d10);
                                    continue;
                                } else {
                                    sb2.append('\\');
                                    sb2.append((char) (((d10 >>> 6) & 3) + 48));
                                    sb2.append((char) (((d10 >>> 3) & 7) + 48));
                                    sb2.append((char) ((d10 & 7) + 48));
                                    break;
                                }
                                break;
                        }
                    } else {
                        sb2.append("\\\\");
                    }
                } else {
                    sb2.append("\\'");
                }
            } else {
                sb2.append("\\\"");
            }
        }
        return sb2.toString();
    }
}
