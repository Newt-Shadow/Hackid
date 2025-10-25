package com.google.android.gms.internal.play_billing;

import io.flutter.Build;
/* loaded from: classes.dex */
final class q4 implements f2 {

    /* renamed from: a  reason: collision with root package name */
    static final f2 f7099a = new q4();

    private q4() {
    }

    @Override // com.google.android.gms.internal.play_billing.f2
    public final boolean a(int i10) {
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                switch (i10) {
                    case Build.API_LEVELS.API_22 /* 22 */:
                    case Build.API_LEVELS.API_23 /* 23 */:
                    case Build.API_LEVELS.API_24 /* 24 */:
                        return true;
                    default:
                        return false;
                }
        }
    }
}
