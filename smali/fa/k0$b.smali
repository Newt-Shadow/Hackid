.class abstract Lfa/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public static a(IIIII)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 7

    .line 1
    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method
