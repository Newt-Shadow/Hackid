package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
class ImageResizer {
    private final Context context;
    private final ExifDataCopier exifDataCopier;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageResizer(Context context, ExifDataCopier exifDataCopier) {
        this.context = context;
        this.exifDataCopier = exifDataCopier;
    }

    private int calculateSampleSize(BitmapFactory.Options options, int i10, int i11) {
        int i12 = options.outHeight;
        int i13 = options.outWidth;
        int i14 = 1;
        if (i12 > i11 || i13 > i10) {
            int i15 = i12 / 2;
            int i16 = i13 / 2;
            while (i15 / i14 >= i11 && i16 / i14 >= i10) {
                i14 *= 2;
            }
        }
        return i14;
    }

    private c0.g calculateTargetSize(double d10, double d11, Double d12, Double d13) {
        boolean z10;
        boolean z11;
        double d14;
        double d15;
        boolean z12;
        boolean z13;
        double d16 = d10 / d11;
        boolean z14 = true;
        if (d12 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (d13 != null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10) {
            d14 = Math.min(d10, Math.round(d12.doubleValue()));
        } else {
            d14 = d10;
        }
        if (z11) {
            d15 = Math.min(d11, Math.round(d13.doubleValue()));
        } else {
            d15 = d11;
        }
        if (z10 && d12.doubleValue() < d10) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z11 && d13.doubleValue() < d11) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (!z12 && !z13) {
            z14 = false;
        }
        if (z14) {
            double d17 = d15 * d16;
            double d18 = d14 / d16;
            if (d18 > d15) {
                d14 = Math.round(d17);
            } else {
                d15 = Math.round(d18);
            }
        }
        return new c0.g((float) d14, (float) d15);
    }

    private void copyExif(String str, String str2) {
        try {
            this.exifDataCopier.copyExif(new androidx.exifinterface.media.a(str), new androidx.exifinterface.media.a(str2));
        } catch (Exception e10) {
            Log.e("ImageResizer", "Error preserving Exif data on selected image: " + e10);
        }
    }

    private File createFile(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.getParentFile().exists()) {
            file2.getParentFile().mkdirs();
        }
        return file2;
    }

    private File createImageOnExternalDirectory(String str, Bitmap bitmap, int i10) {
        Bitmap.CompressFormat compressFormat;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        boolean hasAlpha = bitmap.hasAlpha();
        if (hasAlpha) {
            Log.d("ImageResizer", "image_picker: compressing is not supported for type PNG. Returning the image with original quality");
        }
        if (hasAlpha) {
            compressFormat = Bitmap.CompressFormat.PNG;
        } else {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        bitmap.compress(compressFormat, i10, byteArrayOutputStream);
        File createFile = createFile(this.context.getCacheDir(), str);
        FileOutputStream createOutputStream = createOutputStream(createFile);
        createOutputStream.write(byteArrayOutputStream.toByteArray());
        createOutputStream.close();
        return createFile;
    }

    private FileOutputStream createOutputStream(File file) {
        return new FileOutputStream(file);
    }

    private Bitmap createScaledBitmap(Bitmap bitmap, int i10, int i11, boolean z10) {
        return Bitmap.createScaledBitmap(bitmap, i10, i11, z10);
    }

    private Bitmap decodeFile(String str, BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(str, options);
    }

    private File resizedImage(Bitmap bitmap, Double d10, Double d11, int i10, String str) {
        Bitmap createScaledBitmap = createScaledBitmap(bitmap, d10.intValue(), d11.intValue(), false);
        return createImageOnExternalDirectory("/scaled_" + str, createScaledBitmap, i10);
    }

    c0.g readFileDimensions(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        decodeFile(str, options);
        return new c0.g(options.outWidth, options.outHeight);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String resizeImageIfNeeded(String str, Double d10, Double d11, int i10) {
        boolean z10;
        c0.g readFileDimensions = readFileDimensions(str);
        if (readFileDimensions.b() != -1.0f && readFileDimensions.a() != -1.0f) {
            if (d10 == null && d11 == null && i10 >= 100) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                return str;
            }
            try {
                String[] split = str.split("/");
                String str2 = split[split.length - 1];
                c0.g calculateTargetSize = calculateTargetSize(readFileDimensions.b(), readFileDimensions.a(), d10, d11);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = calculateSampleSize(options, (int) calculateTargetSize.b(), (int) calculateTargetSize.a());
                Bitmap decodeFile = decodeFile(str, options);
                if (decodeFile == null) {
                    return str;
                }
                File resizedImage = resizedImage(decodeFile, Double.valueOf(calculateTargetSize.b()), Double.valueOf(calculateTargetSize.a()), i10, str2);
                copyExif(str, resizedImage.getPath());
                return resizedImage.getPath();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        return str;
    }
}
