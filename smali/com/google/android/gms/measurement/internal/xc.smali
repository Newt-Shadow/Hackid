.class public final Lcom/google/android/gms/measurement/internal/xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lo5/b;->x(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v9, v2

    .line 12
    move-object v10, v9

    .line 13
    move-object v11, v10

    .line 14
    move-object v15, v11

    .line 15
    move-wide v7, v3

    .line 16
    move-wide v13, v7

    .line 17
    move v12, v5

    .line 18
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lo5/b;->q(Landroid/os/Parcel;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Lo5/b;->k(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    packed-switch v3, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lo5/b;->w(Landroid/os/Parcel;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v15, v2

    .line 44
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    move-wide v13, v2

    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    invoke-static {v0, v2}, Lo5/b;->s(Landroid/os/Parcel;I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    move v12, v2

    .line 56
    goto :goto_0

    .line 57
    :pswitch_3
    invoke-static {v0, v2}, Lo5/b;->a(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v11, v2

    .line 62
    goto :goto_0

    .line 63
    :pswitch_4
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v10, v2

    .line 68
    goto :goto_0

    .line 69
    :pswitch_5
    invoke-static {v0, v2}, Lo5/b;->b(Landroid/os/Parcel;I)[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v9, v2

    .line 74
    goto :goto_0

    .line 75
    :pswitch_6
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    move-wide v7, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v0, v1}, Lo5/b;->j(Landroid/os/Parcel;I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/google/android/gms/measurement/internal/wc;

    .line 85
    .line 86
    move-object v6, v0

    .line 87
    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/measurement/internal/wc;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/wc;

    .line 2
    .line 3
    return-object p1
.end method
