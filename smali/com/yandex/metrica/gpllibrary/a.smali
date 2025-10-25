.class public Lcom/yandex/metrica/gpllibrary/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/gpllibrary/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/gpllibrary/a$a;,
        Lcom/yandex/metrica/gpllibrary/a$b;
    }
.end annotation


# instance fields
.field private final a:Lg6/b;

.field private final b:Landroid/location/LocationListener;

.field private final c:Lg6/LocationCallback;

.field private final d:Landroid/os/Looper;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationListener;Landroid/os/Looper;Ljava/util/concurrent/Executor;J)V
    .locals 7

    .line 1
    new-instance v1, Lcom/yandex/metrica/gpllibrary/a$a;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/gpllibrary/a$a;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/gpllibrary/a;-><init>(Lcom/yandex/metrica/gpllibrary/a$a;Landroid/location/LocationListener;Landroid/os/Looper;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/gpllibrary/a$a;Landroid/location/LocationListener;Landroid/os/Looper;Ljava/util/concurrent/Executor;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/gpllibrary/a$a;->a()Lg6/b;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/gpllibrary/a;->a:Lg6/b;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/gpllibrary/a;->b:Landroid/location/LocationListener;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/gpllibrary/a;->d:Landroid/os/Looper;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/gpllibrary/a;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-wide p5, p0, Lcom/yandex/metrica/gpllibrary/a;->f:J

    .line 8
    new-instance p1, Lcom/yandex/metrica/gpllibrary/GplLocationCallback;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/gpllibrary/GplLocationCallback;-><init>(Landroid/location/LocationListener;)V

    iput-object p1, p0, Lcom/yandex/metrica/gpllibrary/a;->c:Lg6/LocationCallback;

    return-void
.end method


# virtual methods
.method public startLocationUpdates(Lcom/yandex/metrica/gpllibrary/a$b;)V
    .locals 4

    .line 1
    const-string v0, "[GplLibraryWrapper]"

    .line 2
    .line 3
    const-string v1, "startLocationUpdates"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/gpllibrary/a;->a:Lg6/b;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->g()Lcom/google/android/gms/location/LocationRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-wide v2, p0, Lcom/yandex/metrica/gpllibrary/a;->f:J

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->l(J)Lcom/google/android/gms/location/LocationRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq p1, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq p1, v2, :cond_0

    .line 32
    .line 33
    const/16 p1, 0x69

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 p1, 0x64

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 p1, 0x66

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 p1, 0x68

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationRequest;->m(I)Lcom/google/android/gms/location/LocationRequest;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/gpllibrary/a;->c:Lg6/LocationCallback;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/yandex/metrica/gpllibrary/a;->d:Landroid/os/Looper;

    .line 51
    .line 52
    invoke-virtual {v0, p1, v1, v2}, Lg6/b;->B(Lcom/google/android/gms/location/LocationRequest;Lg6/LocationCallback;Landroid/os/Looper;)Lm6/Task;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public stopLocationUpdates()V
    .locals 2

    .line 1
    const-string v0, "[GplLibraryWrapper]"

    .line 2
    .line 3
    const-string v1, "stopLocationUpdates"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/gpllibrary/a;->a:Lg6/b;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/gpllibrary/a;->c:Lg6/LocationCallback;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lg6/b;->A(Lg6/LocationCallback;)Lm6/Task;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateLastKnownLocation()V
    .locals 4

    .line 1
    const-string v0, "[GplLibraryWrapper]"

    .line 2
    .line 3
    const-string v1, "updateLastKnownLocation"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/gpllibrary/a;->a:Lg6/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg6/b;->z()Lm6/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/gpllibrary/a;->e:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance v2, Lcom/yandex/metrica/gpllibrary/GplOnSuccessListener;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/yandex/metrica/gpllibrary/a;->b:Landroid/location/LocationListener;

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/yandex/metrica/gpllibrary/GplOnSuccessListener;-><init>(Landroid/location/LocationListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lm6/Task;->f(Ljava/util/concurrent/Executor;Lm6/h;)Lm6/Task;

    .line 24
    .line 25
    .line 26
    return-void
.end method
