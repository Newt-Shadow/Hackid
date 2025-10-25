.class public final Lcom/google/android/gms/internal/measurement/b6;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/b6;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/measurement/cc;

.field private zzm:Lcom/google/android/gms/internal/measurement/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/b6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/b6;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/hb;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/hb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->a()Lcom/google/android/gms/internal/measurement/cc;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzl:Lcom/google/android/gms/internal/measurement/cc;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->a()Lcom/google/android/gms/internal/measurement/cc;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzm:Lcom/google/android/gms/internal/measurement/cc;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzd:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zze:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzh:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzi:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzj:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic L()Lcom/google/android/gms/internal/measurement/b6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    return-object v0
.end method

.method public static c0()Lcom/google/android/gms/internal/measurement/x5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/x5;

    .line 8
    .line 9
    return-object v0
.end method

.method public static d0()Lcom/google/android/gms/internal/measurement/b6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    throw v2

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/x5;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/x5;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/b6;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b6;-><init>()V

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
    const-string v6, "zzh"

    .line 45
    .line 46
    const-string v7, "zzi"

    .line 47
    .line 48
    const-string v8, "zzj"

    .line 49
    .line 50
    const-string v9, "zzk"

    .line 51
    .line 52
    const-string v10, "zzl"

    .line 53
    .line 54
    sget-object v11, Lcom/google/android/gms/internal/measurement/y5;->a:Lcom/google/android/gms/internal/measurement/bc;

    .line 55
    .line 56
    const-string v12, "zzm"

    .line 57
    .line 58
    sget-object v13, Lcom/google/android/gms/internal/measurement/z5;->a:Lcom/google/android/gms/internal/measurement/bc;

    .line 59
    .line 60
    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    .line 65
    .line 66
    const-string v2, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t2\n2"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_4
    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method final synthetic C(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic D()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic E(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzi:Ljava/lang/String;

    return-void
.end method

.method final synthetic F()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzi:Ljava/lang/String;

    return-void
.end method

.method final synthetic G(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic H()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic I(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzk:J

    return-void
.end method

.method final synthetic J()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzl:Lcom/google/android/gms/internal/measurement/cc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzl:Lcom/google/android/gms/internal/measurement/cc;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->c()Lcom/google/android/gms/internal/measurement/cc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzl:Lcom/google/android/gms/internal/measurement/cc;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzl:Lcom/google/android/gms/internal/measurement/cc;

    .line 18
    .line 19
    return-object v0
.end method

.method final synthetic K()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzm:Lcom/google/android/gms/internal/measurement/cc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzm:Lcom/google/android/gms/internal/measurement/cc;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->c()Lcom/google/android/gms/internal/measurement/cc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzm:Lcom/google/android/gms/internal/measurement/cc;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzm:Lcom/google/android/gms/internal/measurement/cc;

    .line 18
    .line 19
    return-object v0
.end method

.method public final M()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final S()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzg:J

    return-wide v0
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final W()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final a0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzk:J

    return-wide v0
.end method

.method final synthetic e0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic f0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic g0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic h0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic i0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic j0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->zzn:Lcom/google/android/gms/internal/measurement/b6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b6;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic k0(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b6;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b6;->zzg:J

    return-void
.end method
