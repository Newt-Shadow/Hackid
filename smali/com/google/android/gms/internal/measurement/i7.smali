.class public final Lcom/google/android/gms/internal/measurement/i7;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/i7;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/nb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/i7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/i7;->zzf:Lcom/google/android/gms/internal/measurement/i7;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/i7;

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
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zzd:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hb;->y()Lcom/google/android/gms/internal/measurement/nb;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 12
    .line 13
    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/measurement/g7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/i7;->zzf:Lcom/google/android/gms/internal/measurement/i7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hb;->o()Lcom/google/android/gms/internal/measurement/fb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/g7;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic E()Lcom/google/android/gms/internal/measurement/i7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/i7;->zzf:Lcom/google/android/gms/internal/measurement/i7;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/i7;->zzf:Lcom/google/android/gms/internal/measurement/i7;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/g7;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/g7;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/i7;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/i7;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/h7;->a:Lcom/google/android/gms/internal/measurement/kb;

    .line 35
    .line 36
    const-string p2, "zze"

    .line 37
    .line 38
    const-class p3, Lcom/google/android/gms/internal/measurement/v6;

    .line 39
    .line 40
    const-string v0, "zzb"

    .line 41
    .line 42
    const-string v1, "zzd"

    .line 43
    .line 44
    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lcom/google/android/gms/internal/measurement/i7;->zzf:Lcom/google/android/gms/internal/measurement/i7;

    .line 49
    .line 50
    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    .line 51
    .line 52
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_4
    const/4 p1, 0x1

    .line 58
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method final synthetic D(Lcom/google/android/gms/internal/measurement/v6;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zze:Lcom/google/android/gms/internal/measurement/nb;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i7;->zze:Lcom/google/android/gms/internal/measurement/nb;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
