.class public abstract Lorg/opencv/android/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/opencv/android/Utils;->b(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;Z)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-wide v0, p1, Lorg/opencv/core/Mat;->a:J

    .line 6
    .line 7
    invoke-static {p0, v0, v1, p2}, Lorg/opencv/android/Utils;->nBitmapToMat2(Landroid/graphics/Bitmap;JZ)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "mat == null"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "bmp == null"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method private static native nBitmapToMat2(Landroid/graphics/Bitmap;JZ)V
.end method
