package org.opencv.android;

import android.graphics.Bitmap;
import org.opencv.core.Mat;
/* loaded from: classes2.dex */
public abstract class Utils {
    public static void a(Bitmap bitmap, Mat mat) {
        b(bitmap, mat, false);
    }

    public static void b(Bitmap bitmap, Mat mat, boolean z10) {
        if (bitmap != null) {
            if (mat != null) {
                nBitmapToMat2(bitmap, mat.f27680a, z10);
                return;
            }
            throw new IllegalArgumentException("mat == null");
        }
        throw new IllegalArgumentException("bmp == null");
    }

    private static native void nBitmapToMat2(Bitmap bitmap, long j10, boolean z10);
}
