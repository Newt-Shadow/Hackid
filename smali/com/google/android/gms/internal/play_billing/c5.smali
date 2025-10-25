.class final Lcom/google/android/gms/internal/play_billing/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/f2;


# static fields
.field static final a:Lcom/google/android/gms/internal/play_billing/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/c5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/c5;->a:Lcom/google/android/gms/internal/play_billing/f2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/d5;->b:Lcom/google/android/gms/internal/play_billing/d5;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d5;->e:Lcom/google/android/gms/internal/play_billing/d5;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d5;->d:Lcom/google/android/gms/internal/play_billing/d5;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d5;->c:Lcom/google/android/gms/internal/play_billing/d5;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/d5;->b:Lcom/google/android/gms/internal/play_billing/d5;

    .line 26
    .line 27
    :goto_0
    if-eqz p1, :cond_4

    .line 28
    .line 29
    return v0

    .line 30
    :cond_4
    const/4 p1, 0x0

    .line 31
    return p1
.end method
