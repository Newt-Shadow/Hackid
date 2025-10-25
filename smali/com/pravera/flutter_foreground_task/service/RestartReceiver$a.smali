.class public final Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pravera/flutter_foreground_task/service/RestartReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-class v1, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1f

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    const/high16 v1, 0x12000000

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/high16 v1, 0x10000000

    .line 23
    .line 24
    :goto_0
    const/16 v2, 0x12c

    .line 25
    .line 26
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "alarm"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Landroid/app/AlarmManager;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    int-to-long v2, p2

    .line 11
    add-long/2addr v0, v2

    .line 12
    new-instance p2, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v2, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;

    .line 15
    .line 16
    invoke-direct {p2, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v3, 0x1f

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    const/high16 v4, 0xa000000

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/high16 v4, 0x8000000

    .line 29
    .line 30
    :goto_0
    const/16 v5, 0x12c

    .line 31
    .line 32
    invoke-static {p1, v5, p2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string v4, "alarm"

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "null cannot be cast to non-null type android.app.AlarmManager"

    .line 43
    .line 44
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v4, Landroid/app/AlarmManager;

    .line 48
    .line 49
    if-lt v2, v3, :cond_1

    .line 50
    .line 51
    sget-object v2, Lsb/d;->a:Lsb/d$a;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Lsb/d$a;->b(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 60
    .line 61
    invoke-direct {p1, v0, v1, p2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    invoke-virtual {v4, p1, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method
