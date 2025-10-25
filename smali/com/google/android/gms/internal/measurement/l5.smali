.class public final Lcom/google/android/gms/internal/measurement/l5;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzu:Lcom/google/android/gms/internal/measurement/l5;


# instance fields
.field private zzb:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/nb;

.field private zzh:Lcom/google/android/gms/internal/measurement/nb;

.field private zzi:Lcom/google/android/gms/internal/measurement/nb;

.field private zzj:Ljava/lang/String;

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/measurement/nb;

.field private zzm:Lcom/google/android/gms/internal/measurement/nb;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Lcom/google/android/gms/internal/measurement/f5;

.field private zzq:Lcom/google/android/gms/internal/measurement/p5;

.field private zzr:Lcom/google/android/gms/internal/measurement/v5;

.field private zzs:Lcom/google/android/gms/internal/measurement/r5;

.field private zzt:Lcom/google/android/gms/internal/measurement/n5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/l5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/l5;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/hb;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/hb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zze:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/l5;->zzg:Lcom/google/android/gms/internal/measurement/nb;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/l5;->zzi:Lcom/google/android/gms/internal/measurement/nb;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzj:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/l5;->zzl:Lcom/google/android/gms/internal/measurement/nb;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/l5;->zzm:Lcom/google/android/gms/internal/measurement/nb;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzn:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzo:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method public static S()Lcom/google/android/gms/internal/measurement/k5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/k5;

    .line 8
    .line 9
    return-object v0
.end method

.method public static T()Lcom/google/android/gms/internal/measurement/l5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    return-object v0
.end method

.method static synthetic X()Lcom/google/android/gms/internal/measurement/l5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    throw v2

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/k5;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/k5;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/l5;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/l5;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_3
    const-string v1, "zzb"

    .line 35
    .line 36
    const-string v2, "zzd"

    .line 37
    .line 38
    const-string v3, "zze"

    .line 39
    .line 40
    const-string v4, "zzf"

    .line 41
    .line 42
    const-string v5, "zzg"

    .line 43
    .line 44
    const-class v6, Lcom/google/android/gms/internal/measurement/t5;

    .line 45
    .line 46
    const-string v7, "zzh"

    .line 47
    .line 48
    const-class v8, Lcom/google/android/gms/internal/measurement/j5;

    .line 49
    .line 50
    const-string v9, "zzi"

    .line 51
    .line 52
    const-class v10, Lcom/google/android/gms/internal/measurement/c4;

    .line 53
    .line 54
    const-string v11, "zzj"

    .line 55
    .line 56
    const-string v12, "zzk"

    .line 57
    .line 58
    const-string v13, "zzl"

    .line 59
    .line 60
    const-class v14, Lcom/google/android/gms/internal/measurement/d8;

    .line 61
    .line 62
    const-string v15, "zzm"

    .line 63
    .line 64
    const-class v16, Lcom/google/android/gms/internal/measurement/h5;

    .line 65
    .line 66
    const-string v17, "zzn"

    .line 67
    .line 68
    const-string v18, "zzo"

    .line 69
    .line 70
    const-string v19, "zzp"

    .line 71
    .line 72
    const-string v20, "zzq"

    .line 73
    .line 74
    const-string v21, "zzr"

    .line 75
    .line 76
    const-string v22, "zzs"

    .line 77
    .line 78
    const-string v23, "zzt"

    .line 79
    .line 80
    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/measurement/l5;->zzu:Lcom/google/android/gms/internal/measurement/l5;

    .line 85
    .line 86
    const-string v2, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005\u000e\u1008\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u1009\t\u0012\u1009\n\u0013\u1009\u000b"

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_4
    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzd:J

    return-wide v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzg:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final I(I)Lcom/google/android/gms/internal/measurement/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/measurement/j5;

    .line 8
    .line 9
    return-object p1
.end method

.method public final J()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzi:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final K()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzl:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzl:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final M()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzm:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzb:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Lcom/google/android/gms/internal/measurement/f5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzp:Lcom/google/android/gms/internal/measurement/f5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f5;->I()Lcom/google/android/gms/internal/measurement/f5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzb:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Lcom/google/android/gms/internal/measurement/v5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzr:Lcom/google/android/gms/internal/measurement/v5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v5;->G()Lcom/google/android/gms/internal/measurement/v5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method final synthetic U(ILcom/google/android/gms/internal/measurement/j5;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hb;->z(Lcom/google/android/gms/internal/measurement/nb;)Lcom/google/android/gms/internal/measurement/nb;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzh:Lcom/google/android/gms/internal/measurement/nb;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method final synthetic V()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzi:Lcom/google/android/gms/internal/measurement/nb;

    .line 6
    .line 7
    return-void
.end method

.method final synthetic W()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/l5;->zzl:Lcom/google/android/gms/internal/measurement/nb;

    .line 6
    .line 7
    return-void
.end method
