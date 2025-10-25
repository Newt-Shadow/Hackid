.class public final Lcom/google/android/gms/internal/measurement/t4;
.super Lcom/google/android/gms/internal/measurement/hb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/jc;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/t4;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/t4;->zzg:Lcom/google/android/gms/internal/measurement/t4;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/t4;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/hb;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/hb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C()Lcom/google/android/gms/internal/measurement/t4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/t4;->zzg:Lcom/google/android/gms/internal/measurement/t4;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/t4;->zzg:Lcom/google/android/gms/internal/measurement/t4;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    throw p3

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/s4;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/s4;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/t4;-><init>()V

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
    sget-object v2, Lcom/google/android/gms/internal/measurement/y4;->a:Lcom/google/android/gms/internal/measurement/kb;

    .line 39
    .line 40
    const-string v3, "zze"

    .line 41
    .line 42
    sget-object v4, Lcom/google/android/gms/internal/measurement/w4;->a:Lcom/google/android/gms/internal/measurement/kb;

    .line 43
    .line 44
    const-string v5, "zzf"

    .line 45
    .line 46
    sget-object v6, Lcom/google/android/gms/internal/measurement/d5;->a:Lcom/google/android/gms/internal/measurement/kb;

    .line 47
    .line 48
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object p2, Lcom/google/android/gms/internal/measurement/t4;->zzg:Lcom/google/android/gms/internal/measurement/t4;

    .line 53
    .line 54
    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    .line 55
    .line 56
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/hb;->t(Lcom/google/android/gms/internal/measurement/ic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_4
    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t4;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a5;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t4;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/x4;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/t4;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/e5;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
