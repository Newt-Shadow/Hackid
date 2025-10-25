.class public final Lcom/google/android/gms/measurement/internal/g6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/w6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->g0()Lcom/google/android/gms/measurement/internal/w6;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    const-string v1, "com.android.vending"

    .line 29
    .line 30
    const/16 v3, 0x80

    .line 31
    .line 32
    invoke-virtual {v2, v1, v3}, Lt5/d;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    const v2, 0x4d17ab4

    .line 39
    .line 40
    .line 41
    if-lt v1, v2, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_1
    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    .line 57
    .line 58
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return v0
.end method
