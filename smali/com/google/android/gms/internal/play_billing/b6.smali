.class public final Lcom/google/android/gms/internal/play_billing/b6;
.super Lcom/google/android/gms/internal/play_billing/b2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/g3;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/b6;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/b6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/b6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/b6;->zzb:Lcom/google/android/gms/internal/play_billing/b6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/b6;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/b2;->v(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/b2;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/play_billing/b6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b6;->zzb:Lcom/google/android/gms/internal/play_billing/b6;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/gms/internal/play_billing/b6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/b6;->zzb:Lcom/google/android/gms/internal/play_billing/b6;

    return-object v0
.end method


# virtual methods
.method protected final z(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    return-object p3

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/b6;->zzb:Lcom/google/android/gms/internal/play_billing/b6;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/z5;

    .line 23
    .line 24
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/z5;-><init>(Lcom/google/android/gms/internal/play_billing/y5;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/b6;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/b6;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_3
    const-string p1, "zze"

    .line 35
    .line 36
    sget-object p2, Lcom/google/android/gms/internal/play_billing/a6;->a:Lcom/google/android/gms/internal/play_billing/f2;

    .line 37
    .line 38
    const-string p3, "zzd"

    .line 39
    .line 40
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object p2, Lcom/google/android/gms/internal/play_billing/b6;->zzb:Lcom/google/android/gms/internal/play_billing/b6;

    .line 45
    .line 46
    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    .line 47
    .line 48
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/b2;->s(Lcom/google/android/gms/internal/play_billing/f3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_4
    const/4 p1, 0x1

    .line 54
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method
