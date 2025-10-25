.class public final Lcom/google/android/gms/internal/measurement/k7;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/k7;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/mb;

.field private zzd:Lcom/google/android/gms/internal/measurement/mb;

.field private zze:Lcom/google/android/gms/internal/measurement/nb;

.field private zzf:Lcom/google/android/gms/internal/measurement/nb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/k7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/k7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/k7;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->w()Lcom/google/android/gms/internal/measurement/mb;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->w()Lcom/google/android/gms/internal/measurement/mb;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 27
    .line 28
    return-void
.end method

.method public static K()Lcom/google/android/gms/internal/measurement/j7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/j7;

    .line 8
    .line 9
    return-object v0
.end method

.method public static L()Lcom/google/android/gms/internal/measurement/k7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    return-object v0
.end method

.method static synthetic U()Lcom/google/android/gms/internal/measurement/k7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    if-eq p1, p2, :cond_3

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-eq p1, p2, :cond_2

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    const/4 p3, 0x0

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/j7;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/j7;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/k7;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/k7;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string v0, "zzb"

    .line 35
    .line 36
    const-string v1, "zzd"

    .line 37
    .line 38
    const-string v2, "zze"

    .line 39
    .line 40
    const-class v3, Lcom/google/android/gms/internal/measurement/r6;

    .line 41
    .line 42
    const-string v4, "zzf"

    .line 43
    .line 44
    const-class v5, Lcom/google/android/gms/internal/measurement/m7;

    .line 45
    .line 46
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lcom/google/android/gms/internal/measurement/k7;->zzg:Lcom/google/android/gms/internal/measurement/k7;

    .line 51
    .line 52
    const-string p3, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 53
    .line 54
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_4
    const/4 p1, 0x1

    .line 60
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final C()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

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

.method public final E()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    return-object v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

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

.method public final G()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

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

.method public final I()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final J()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

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

.method final synthetic M(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hb;->x(Lcom/google/android/gms/internal/measurement/mb;)Lcom/google/android/gms/internal/measurement/mb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/v9;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic N()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->w()Lcom/google/android/gms/internal/measurement/mb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzb:Lcom/google/android/gms/internal/measurement/mb;

    .line 6
    .line 7
    return-void
.end method

.method final synthetic O(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hb;->x(Lcom/google/android/gms/internal/measurement/mb;)Lcom/google/android/gms/internal/measurement/mb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/v9;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic P()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->w()Lcom/google/android/gms/internal/measurement/mb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzd:Lcom/google/android/gms/internal/measurement/mb;

    .line 6
    .line 7
    return-void
.end method

.method final synthetic Q(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hb;->z(Lcom/google/android/gms/internal/measurement/nb;)Lcom/google/android/gms/internal/measurement/nb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/v9;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic R()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 6
    .line 7
    return-void
.end method

.method final synthetic S(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nb;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/hb;->z(Lcom/google/android/gms/internal/measurement/nb;)Lcom/google/android/gms/internal/measurement/nb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/v9;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method final synthetic T()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k7;->zzf:Lcom/google/android/gms/internal/measurement/nb;

    .line 6
    .line 7
    return-void
.end method
