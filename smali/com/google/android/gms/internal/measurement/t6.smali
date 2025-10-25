.class public final Lcom/google/android/gms/internal/measurement/t6;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/t6;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/nb;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/t6;->zzj:Lcom/google/android/gms/internal/measurement/t6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/t6;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zze:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static M()Lcom/google/android/gms/internal/measurement/s6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t6;->zzj:Lcom/google/android/gms/internal/measurement/t6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic W()Lcom/google/android/gms/internal/measurement/t6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t6;->zzj:Lcom/google/android/gms/internal/measurement/t6;

    return-object v0
.end method

.method private final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/t6;->zzj:Lcom/google/android/gms/internal/measurement/t6;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/s6;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/s6;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/t6;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/t6;-><init>()V

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
    const-class v2, Lcom/google/android/gms/internal/measurement/x6;

    .line 39
    .line 40
    const-string v3, "zze"

    .line 41
    .line 42
    const-string v4, "zzf"

    .line 43
    .line 44
    const-string v5, "zzg"

    .line 45
    .line 46
    const-string v6, "zzh"

    .line 47
    .line 48
    const-string v7, "zzi"

    .line 49
    .line 50
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object p2, Lcom/google/android/gms/internal/measurement/t6;->zzj:Lcom/google/android/gms/internal/measurement/t6;

    .line 55
    .line 56
    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003\u0006\u1002\u0004"

    .line 57
    .line 58
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_4
    const/4 p1, 0x1

    .line 64
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final C()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

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

.method public final E(I)Lcom/google/android/gms/internal/measurement/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/measurement/x6;

    .line 8
    .line 9
    return-object p1
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzf:J

    return-wide v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzg:J

    return-wide v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzh:I

    return v0
.end method

.method final synthetic N(ILcom/google/android/gms/internal/measurement/x6;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t6;->X()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method final synthetic O(Lcom/google/android/gms/internal/measurement/x6;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t6;->X()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method final synthetic P(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t6;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/v9;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final synthetic Q()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 6
    .line 7
    return-void
.end method

.method final synthetic R(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t6;->X()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzd:Lcom/google/android/gms/internal/measurement/nb;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final synthetic S(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t6;->zze:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method final synthetic T(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/t6;->zzf:J

    return-void
.end method

.method final synthetic U(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/t6;->zzg:J

    return-void
.end method

.method final synthetic V(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/t6;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/t6;->zzi:J

    return-void
.end method
