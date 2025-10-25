package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
abstract class cd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ka kaVar) {
        StringBuilder sb2 = new StringBuilder(kaVar.i());
        for (int i10 = 0; i10 < kaVar.i(); i10++) {
            byte d10 = kaVar.d(i10);
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
