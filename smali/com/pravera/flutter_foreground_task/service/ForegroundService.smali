.class public final Lcom/pravera/flutter_foreground_task/service/ForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

.field private static final n:Ljava/lang/String;

.field private static final o:Lwd/p;

.field private static final p:Lwd/u;

.field private static q:Lrb/o;

.field private static r:Lrb/p;


# instance fields
.field private a:Lqb/a;

.field private b:Lqb/e;

.field private c:Lqb/b;

.field private d:Lqb/i;

.field private e:Lqb/g;

.field private f:Lqb/e;

.field private g:Lqb/b;

.field private h:Lqb/i;

.field private i:Lqb/g;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/net/wifi/WifiManager$WifiLock;

.field private l:Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 8
    .line 9
    const-class v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0}, Lwd/w;->a(Ljava/lang/Object;)Lwd/p;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->o:Lwd/p;

    .line 24
    .line 25
    invoke-static {v0}, Lwd/f;->a(Lwd/p;)Lwd/u;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->p:Lwd/u;

    .line 30
    .line 31
    new-instance v0, Lrb/p;

    .line 32
    .line 33
    invoke-direct {v0}, Lrb/p;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->r:Lrb/p;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;-><init>(Lcom/pravera/flutter_foreground_task/service/ForegroundService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->l:Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lrb/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q:Lrb/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lwd/u;
    .locals 1

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->p:Lwd/u;

    .line 2
    .line 3
    return-object v0
.end method

.method private final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "foregroundTaskOptions"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lqb/e;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v4

    .line 35
    :goto_0
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v5, "power"

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v5, "null cannot be cast to non-null type android.os.PowerManager"

    .line 48
    .line 49
    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v0, Landroid/os/PowerManager;

    .line 53
    .line 54
    const-string v5, "ForegroundService:WakeLock"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j:Landroid/os/PowerManager$WakeLock;

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object v1, v0

    .line 77
    :goto_1
    invoke-virtual {v1}, Lqb/e;->b()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move v3, v4

    .line 97
    :goto_2
    if-eqz v3, :cond_7

    .line 98
    .line 99
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "wifi"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 115
    .line 116
    const/4 v1, 0x3

    .line 117
    const-string v2, "ForegroundService:WifiLock"

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    .line 130
    .line 131
    :cond_7
    return-void
.end method

.method private final e(Ljava/util/List;Z)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    new-instance v3, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v4, "onNotificationButtonPressed"

    .line 19
    .line 20
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lqb/f;

    .line 35
    .line 36
    invoke-virtual {v4}, Lqb/f;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "intentData"

    .line 41
    .line 42
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    const/high16 v4, 0x14000000

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/high16 v4, 0x4000000

    .line 51
    .line 52
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lqb/f;

    .line 57
    .line 58
    invoke-virtual {v5}, Lqb/f;->c()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, v5}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    move-object v5, v6

    .line 71
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Lqb/f;

    .line 76
    .line 77
    invoke-virtual {v7}, Lqb/f;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-direct {p0, v7, v5}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->o(Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/Spannable;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 92
    .line 93
    invoke-direct {v4, v6, v5, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-object v0
.end method

.method private final f(Ljava/util/List;Z)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    new-instance v4, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v5, "onNotificationButtonPressed"

    .line 20
    .line 21
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lqb/f;

    .line 36
    .line 37
    invoke-virtual {v5}, Lqb/f;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "intentData"

    .line 42
    .line 43
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    const/high16 v5, 0x14000000

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/high16 v5, 0x4000000

    .line 52
    .line 53
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lqb/f;

    .line 58
    .line 59
    invoke-virtual {v6}, Lqb/f;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    invoke-direct {p0, v6}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    const/4 v6, 0x0

    .line 71
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Lqb/f;

    .line 76
    .line 77
    invoke-virtual {v7}, Lqb/f;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-direct {p0, v7, v6}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->o(Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/Spannable;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v5, Landroidx/core/app/k$a$a;

    .line 92
    .line 93
    invoke-direct {v5, v2, v6, v4}, Landroidx/core/app/k$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Landroidx/core/app/k$a$a;->b()Landroidx/core/app/k$a;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v5, "build(...)"

    .line 101
    .line 102
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    return-object v0
.end method

.method private final g()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lrb/o;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->a:Lqb/a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "foregroundServiceStatus"

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->c:Lqb/b;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "foregroundTaskData"

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v3, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v3, v0

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string v0, "foregroundTaskOptions"

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v1, v0

    .line 42
    :goto_2
    invoke-virtual {v1}, Lqb/e;->e()Lqb/c;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget-object v5, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->r:Lrb/p;

    .line 47
    .line 48
    move-object v0, v6

    .line 49
    move-object v1, p0

    .line 50
    invoke-direct/range {v0 .. v5}, Lrb/o;-><init>(Landroid/content/Context;Lqb/a;Lqb/b;Lqb/c;Lob/a;)V

    .line 51
    .line 52
    .line 53
    sput-object v6, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q:Lrb/o;

    .line 54
    .line 55
    return-void
.end method

.method private final h()Landroid/app/Notification;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 2
    .line 3
    const-string v1, "notificationContent"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Lqb/g;->b()Lqb/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m(Lqb/h;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lqb/h;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v2

    .line 34
    :goto_0
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->k()Landroid/app/PendingIntent;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->l()Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v6, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->i:Lqb/g;

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    invoke-virtual {v6}, Lqb/g;->a()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v6, v2

    .line 52
    :goto_1
    iget-object v7, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 53
    .line 54
    if-nez v7, :cond_3

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v7, v2

    .line 60
    :cond_3
    invoke-virtual {v7}, Lqb/g;->a()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eqz v6, :cond_7

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eq v10, v11, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move-object v10, v7

    .line 80
    check-cast v10, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    move v11, v8

    .line 87
    :goto_2
    if-ge v11, v10, :cond_6

    .line 88
    .line 89
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-static {v12, v13}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-nez v12, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    move v6, v8

    .line 108
    goto :goto_4

    .line 109
    :cond_7
    :goto_3
    move v6, v9

    .line 110
    :goto_4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    const/16 v11, 0x1a

    .line 113
    .line 114
    const-string v12, "build(...)"

    .line 115
    .line 116
    const-string v13, "notificationOptions"

    .line 117
    .line 118
    if-lt v10, v11, :cond_12

    .line 119
    .line 120
    invoke-static {}, Lrb/e;->a()V

    .line 121
    .line 122
    .line 123
    iget-object v8, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 124
    .line 125
    if-nez v8, :cond_8

    .line 126
    .line 127
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object v8, v2

    .line 131
    :cond_8
    invoke-virtual {v8}, Lqb/i;->b()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {p0, v8}, Lrb/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    iget-object v11, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 143
    .line 144
    if-nez v11, :cond_9

    .line 145
    .line 146
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v11, v2

    .line 150
    :cond_9
    invoke-virtual {v11}, Lqb/i;->k()Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 164
    .line 165
    if-nez v3, :cond_a

    .line 166
    .line 167
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v3, v2

    .line 171
    :cond_a
    invoke-virtual {v3}, Lqb/g;->e()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 179
    .line 180
    if-nez v3, :cond_b

    .line 181
    .line 182
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    move-object v3, v2

    .line 186
    :cond_b
    invoke-virtual {v3}, Lqb/g;->d()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    .line 194
    .line 195
    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 202
    .line 203
    if-nez v1, :cond_c

    .line 204
    .line 205
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object v1, v2

    .line 209
    :cond_c
    invoke-virtual {v1}, Lqb/i;->l()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 217
    .line 218
    if-nez v1, :cond_d

    .line 219
    .line 220
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_d
    move-object v2, v1

    .line 225
    :goto_5
    invoke-virtual {v2}, Lqb/i;->f()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 230
    .line 231
    .line 232
    if-eqz v0, :cond_e

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 239
    .line 240
    .line 241
    :cond_e
    const/16 v0, 0x1f

    .line 242
    .line 243
    if-lt v10, v0, :cond_f

    .line 244
    .line 245
    invoke-static {v8, v9}, Lrb/a;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 246
    .line 247
    .line 248
    :cond_f
    const/16 v0, 0x22

    .line 249
    .line 250
    if-lt v10, v0, :cond_10

    .line 251
    .line 252
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 253
    .line 254
    .line 255
    :cond_10
    invoke-direct {p0, v7, v6}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e(Ljava/util/List;Z)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_11

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Landroid/app/Notification$Action;

    .line 274
    .line 275
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_11
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0, v12}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_12
    new-instance v5, Landroidx/core/app/k$e;

    .line 288
    .line 289
    iget-object v10, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 290
    .line 291
    if-nez v10, :cond_13

    .line 292
    .line 293
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    move-object v10, v2

    .line 297
    :cond_13
    invoke-virtual {v10}, Lqb/i;->b()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    invoke-direct {v5, p0, v10}, Landroidx/core/app/k$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v9}, Landroidx/core/app/k$e;->A(Z)Landroidx/core/app/k$e;

    .line 305
    .line 306
    .line 307
    iget-object v10, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 308
    .line 309
    if-nez v10, :cond_14

    .line 310
    .line 311
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    move-object v10, v2

    .line 315
    :cond_14
    invoke-virtual {v10}, Lqb/i;->k()Z

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    invoke-virtual {v5, v10}, Landroidx/core/app/k$e;->F(Z)Landroidx/core/app/k$e;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v3}, Landroidx/core/app/k$e;->H(I)Landroidx/core/app/k$e;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v4}, Landroidx/core/app/k$e;->m(Landroid/app/PendingIntent;)Landroidx/core/app/k$e;

    .line 326
    .line 327
    .line 328
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 329
    .line 330
    if-nez v3, :cond_15

    .line 331
    .line 332
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    move-object v3, v2

    .line 336
    :cond_15
    invoke-virtual {v3}, Lqb/g;->e()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v5, v3}, Landroidx/core/app/k$e;->o(Ljava/lang/CharSequence;)Landroidx/core/app/k$e;

    .line 341
    .line 342
    .line 343
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 344
    .line 345
    if-nez v3, :cond_16

    .line 346
    .line 347
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    move-object v3, v2

    .line 351
    :cond_16
    invoke-virtual {v3}, Lqb/g;->d()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v5, v3}, Landroidx/core/app/k$e;->n(Ljava/lang/CharSequence;)Landroidx/core/app/k$e;

    .line 356
    .line 357
    .line 358
    new-instance v3, Landroidx/core/app/k$c;

    .line 359
    .line 360
    invoke-direct {v3}, Landroidx/core/app/k$c;-><init>()V

    .line 361
    .line 362
    .line 363
    iget-object v4, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 364
    .line 365
    if-nez v4, :cond_17

    .line 366
    .line 367
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    move-object v4, v2

    .line 371
    :cond_17
    invoke-virtual {v4}, Lqb/g;->d()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v3, v1}, Landroidx/core/app/k$c;->n(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v5, v1}, Landroidx/core/app/k$e;->J(Landroidx/core/app/k$j;)Landroidx/core/app/k$e;

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 383
    .line 384
    if-nez v1, :cond_18

    .line 385
    .line 386
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    move-object v1, v2

    .line 390
    :cond_18
    invoke-virtual {v1}, Lqb/i;->l()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {v5, v1}, Landroidx/core/app/k$e;->P(I)Landroidx/core/app/k$e;

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 398
    .line 399
    if-nez v1, :cond_19

    .line 400
    .line 401
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    move-object v1, v2

    .line 405
    :cond_19
    invoke-virtual {v1}, Lqb/i;->f()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-virtual {v5, v1}, Landroidx/core/app/k$e;->B(Z)Landroidx/core/app/k$e;

    .line 410
    .line 411
    .line 412
    if-eqz v0, :cond_1a

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-virtual {v5, v0}, Landroidx/core/app/k$e;->k(I)Landroidx/core/app/k$e;

    .line 419
    .line 420
    .line 421
    :cond_1a
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 422
    .line 423
    if-nez v0, :cond_1b

    .line 424
    .line 425
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    move-object v0, v2

    .line 429
    :cond_1b
    invoke-virtual {v0}, Lqb/i;->e()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_1c

    .line 434
    .line 435
    new-array v0, v9, [J

    .line 436
    .line 437
    const-wide/16 v3, 0x0

    .line 438
    .line 439
    aput-wide v3, v0, v8

    .line 440
    .line 441
    invoke-virtual {v5, v0}, Landroidx/core/app/k$e;->O([J)Landroidx/core/app/k$e;

    .line 442
    .line 443
    .line 444
    :cond_1c
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 445
    .line 446
    if-nez v0, :cond_1d

    .line 447
    .line 448
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    move-object v0, v2

    .line 452
    :cond_1d
    invoke-virtual {v0}, Lqb/i;->g()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-nez v0, :cond_1e

    .line 457
    .line 458
    invoke-virtual {v5, v2}, Landroidx/core/app/k$e;->I(Landroid/net/Uri;)Landroidx/core/app/k$e;

    .line 459
    .line 460
    .line 461
    :cond_1e
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 462
    .line 463
    if-nez v0, :cond_1f

    .line 464
    .line 465
    invoke-static {v13}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_1f
    move-object v2, v0

    .line 470
    :goto_7
    invoke-virtual {v2}, Lqb/i;->h()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-virtual {v5, v0}, Landroidx/core/app/k$e;->C(I)Landroidx/core/app/k$e;

    .line 475
    .line 476
    .line 477
    invoke-direct {p0, v7, v6}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->f(Ljava/util/List;Z)Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eqz v1, :cond_20

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    check-cast v1, Landroidx/core/app/k$a;

    .line 496
    .line 497
    invoke-virtual {v5, v1}, Landroidx/core/app/k$e;->b(Landroidx/core/app/k$a;)Landroidx/core/app/k$e;

    .line 498
    .line 499
    .line 500
    goto :goto_8

    .line 501
    :cond_20
    invoke-virtual {v5}, Landroidx/core/app/k$e;->d()Landroid/app/Notification;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-static {v0, v12}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    return-object v0
.end method

.method private final i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 2
    .line 3
    const-string v1, "notificationOptions"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Lqb/i;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v3, v2

    .line 24
    :cond_1
    invoke-virtual {v3}, Lqb/i;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v4, v2

    .line 36
    :cond_2
    invoke-virtual {v4}, Lqb/i;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v5, v2

    .line 48
    :cond_3
    invoke-virtual {v5}, Lqb/i;->c()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-class v6, Landroid/app/NotificationManager;

    .line 53
    .line 54
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroid/app/NotificationManager;

    .line 59
    .line 60
    invoke-static {v6, v0}, Lcom/dexterous/flutterlocalnotifications/d0;->a(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-nez v7, :cond_9

    .line 65
    .line 66
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/w0;->a()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v3, v5}, Lcom/dexterous/flutterlocalnotifications/v0;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-static {v0, v4}, Lcom/dexterous/flutterlocalnotifications/q;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v3, v2

    .line 86
    :cond_5
    invoke-virtual {v3}, Lqb/i;->e()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v0, v3}, Lcom/dexterous/flutterlocalnotifications/v;->a(Landroid/app/NotificationChannel;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 94
    .line 95
    if-nez v3, :cond_6

    .line 96
    .line 97
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    move-object v3, v2

    .line 101
    :cond_6
    invoke-virtual {v3}, Lqb/i;->g()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_7

    .line 106
    .line 107
    invoke-static {v0, v2, v2}, Lcom/dexterous/flutterlocalnotifications/t;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object v3, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 111
    .line 112
    if-nez v3, :cond_8

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    move-object v2, v3

    .line 119
    :goto_0
    invoke-virtual {v2}, Lqb/i;->j()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v0, v1}, Lcom/dexterous/flutterlocalnotifications/a0;->a(Landroid/app/NotificationChannel;Z)V

    .line 124
    .line 125
    .line 126
    invoke-static {v6, v0}, Lcom/dexterous/flutterlocalnotifications/r;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 127
    .line 128
    .line 129
    :cond_9
    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q:Lrb/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lrb/o;->l()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q:Lrb/o;

    .line 10
    .line 11
    return-void
.end method

.method private final k()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v2, "intentData"

    .line 25
    .line 26
    const-string v3, "onNotificationPressed"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-string v2, "notificationContent"

    .line 36
    .line 37
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    :goto_0
    invoke-virtual {v1}, Lqb/g;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const-string v2, "route"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v0, v1

    .line 55
    :cond_2
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v2, 0x1f

    .line 58
    .line 59
    if-lt v1, v2, :cond_3

    .line 60
    .line 61
    const/high16 v1, 0xc000000

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/high16 v1, 0x8000000

    .line 65
    .line 66
    :goto_2
    const/16 v2, 0x12d

    .line 67
    .line 68
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "getActivity(...)"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method private final l()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "onNotificationDismissed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1f

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    const/high16 v1, 0xc000000

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/high16 v1, 0x8000000

    .line 25
    .line 26
    :goto_0
    const/16 v2, 0x12e

    .line 27
    .line 28
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getBroadcast(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private final m(Lqb/h;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "getApplicationInfo(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 32
    .line 33
    return p1

    .line 34
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lqb/h;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p1

    .line 47
    :cond_1
    return v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    sget-object v2, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "getIconResId("

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x29

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    return v0
.end method

.method private final n(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x6

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v1, p1

    .line 12
    invoke-static/range {v1 .. v6}, Lrd/n;->z0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    return-object p1
.end method

.method private final o(Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/Spannable;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/text/SpannableString;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v0
.end method

.method private final p()V
    .locals 4

    .line 1
    sget-object v0, Lqb/a;->b:Lqb/a$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApplicationContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lqb/a$a;->a(Landroid/content/Context;)Lqb/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->a:Lqb/a;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "foregroundTaskOptions"

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v0, v1

    .line 31
    :cond_0
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->f:Lqb/e;

    .line 32
    .line 33
    :cond_1
    sget-object v0, Lqb/e;->f:Lqb/e$a;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lqb/e$a;->b(Landroid/content/Context;)Lqb/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->c:Lqb/b;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string v0, "foregroundTaskData"

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v0, v1

    .line 60
    :cond_2
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->g:Lqb/b;

    .line 61
    .line 62
    :cond_3
    sget-object v0, Lqb/b;->b:Lqb/b$a;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lqb/b$a;->b(Landroid/content/Context;)Lqb/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->c:Lqb/b;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    const-string v0, "notificationOptions"

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v0, v1

    .line 89
    :cond_4
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->h:Lqb/i;

    .line 90
    .line 91
    :cond_5
    sget-object v0, Lqb/i;->m:Lqb/i$a;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lqb/i$a;->b(Landroid/content/Context;)Lqb/i;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    const-string v0, "notificationContent"

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    move-object v1, v0

    .line 119
    :goto_0
    iput-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->i:Lqb/g;

    .line 120
    .line 121
    :cond_7
    sget-object v0, Lqb/g;->f:Lqb/g$a;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lqb/g$a;->b(Landroid/content/Context;)Lqb/g;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->e:Lqb/g;

    .line 135
    .line 136
    return-void
.end method

.method private final q()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onNotificationButtonPressed"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "onNotificationPressed"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "onNotificationDismissed"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x21

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->l:Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-static {p0, v1, v0, v2}, Lrb/b;->a(Lcom/pravera/flutter_foreground_task/service/ForegroundService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->l:Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j:Landroid/os/PowerManager$WakeLock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private final s()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->i()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "notificationOptions"

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :cond_1
    invoke-virtual {v1}, Lqb/i;->i()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->h()Landroid/app/Notification;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/16 v3, 0x1d

    .line 29
    .line 30
    if-lt v0, v3, :cond_2

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    invoke-static {p0, v1, v2, v0}, Lrb/c;->a(Lcom/pravera/flutter_foreground_task/service/ForegroundService;ILandroid/app/Notification;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->r()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d()V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->o:Lwd/p;

    .line 47
    .line 48
    :cond_3
    invoke-interface {v0}, Lwd/p;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v2, v1

    .line 53
    check-cast v2, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Lwd/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    return-void
.end method

.method private final t()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->r()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->o:Lwd/p;

    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Lwd/p;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lwd/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    return-void
.end method

.method private final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->l:Lcom/pravera/flutter_foreground_task/service/ForegroundService$b;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q:Lrb/o;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "foregroundTaskOptions"

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lqb/e;->e()Lqb/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lrb/o;->B(Lqb/c;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->d:Lqb/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "notificationOptions"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lqb/i;->i()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->h()Landroid/app/Notification;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-class v2, Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/app/NotificationManager;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->q()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->j()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->t()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->a:Lqb/a;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "foregroundServiceStatus"

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lqb/a;->b()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lsb/b;->a:Lsb/b$a;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Lsb/b$a;->a(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "The service was terminated due to an unexpected problem. The service will restart after 5 seconds."

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->a:Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

    .line 45
    .line 46
    const/16 v1, 0x1388

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1}, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;->b(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->p()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->a:Lqb/a;

    .line 5
    .line 6
    const-string p3, "foregroundServiceStatus"

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-static {p3}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p2, v0

    .line 15
    :cond_0
    invoke-virtual {p2}, Lqb/a;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v1, Lsb/b;->a:Lsb/b$a;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lsb/b$a;->a(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "com.pravera.flutter_foreground_task.action.api_stop"

    .line 26
    .line 27
    invoke-static {p2, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    sget-object p1, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->a:Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;->a(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->t()V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_1
    const-string v2, "com.pravera.flutter_foreground_task.action.restart"

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    sget-object p1, Lqb/a;->b:Lqb/a$a;

    .line 48
    .line 49
    invoke-virtual {p1, p0, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lqb/a$a;->a(Landroid/content/Context;)Lqb/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->a:Lqb/a;

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    invoke-static {p3}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object p1, v0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lqb/a;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 73
    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :sswitch_0
    const-string p1, "com.pravera.flutter_foreground_task.action.reboot"

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :sswitch_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->s()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->g()V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->n:Ljava/lang/String;

    .line 102
    .line 103
    const-string p2, "The service has been restarted by Android OS."

    .line 104
    .line 105
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :sswitch_2
    const-string p1, "com.pravera.flutter_foreground_task.action.api_update"

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_5
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->w()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->g:Lqb/b;

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Lqb/b;->a()Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_0

    .line 132
    :cond_6
    move-object p1, v0

    .line 133
    :goto_0
    iget-object p2, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->c:Lqb/b;

    .line 134
    .line 135
    if-nez p2, :cond_7

    .line 136
    .line 137
    const-string p2, "foregroundTaskData"

    .line 138
    .line 139
    invoke-static {p2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object p2, v0

    .line 143
    :cond_7
    invoke-virtual {p2}, Lqb/b;->a()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_8

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->g()V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    iget-object p1, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->f:Lqb/e;

    .line 158
    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1}, Lqb/e;->e()Lqb/c;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_1

    .line 166
    :cond_9
    move-object p1, v0

    .line 167
    :goto_1
    iget-object p2, p0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->b:Lqb/e;

    .line 168
    .line 169
    if-nez p2, :cond_a

    .line 170
    .line 171
    const-string p2, "foregroundTaskOptions"

    .line 172
    .line 173
    invoke-static {p2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_a
    move-object v0, p2

    .line 178
    :goto_2
    invoke-virtual {v0}, Lqb/e;->e()Lqb/c;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_c

    .line 187
    .line 188
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->v()V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :sswitch_3
    const-string p1, "com.pravera.flutter_foreground_task.action.api_restart"

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_b

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :sswitch_4
    const-string p1, "com.pravera.flutter_foreground_task.action.api_start"

    .line 202
    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_b

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_b
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->s()V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->g()V

    .line 214
    .line 215
    .line 216
    :cond_c
    :goto_3
    if-eqz v1, :cond_d

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_d
    const/4 v3, 0x1

    .line 220
    :goto_4
    return v3

    .line 221
    :sswitch_data_0
    .sparse-switch
        -0xcad194d -> :sswitch_4
        0x1cb37020 -> :sswitch_3
        0x7a3c6098 -> :sswitch_2
        0x7b7b1445 -> :sswitch_1
        0x7fd2e2af -> :sswitch_0
    .end sparse-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lsb/b;->a:Lsb/b$a;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lsb/b$a;->a(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->a:Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

    .line 17
    .line 18
    const/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-virtual {p1, p0, v0}, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;->b(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
