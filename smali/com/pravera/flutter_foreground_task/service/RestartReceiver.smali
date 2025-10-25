.class public final Lcom/pravera/flutter_foreground_task/service/RestartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->a:Lcom/pravera/flutter_foreground_task/service/RestartReceiver$a;

    .line 8
    .line 9
    const-class v0, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->b:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p2, Lqb/a;->b:Lqb/a$a;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lqb/a$a;->a(Landroid/content/Context;)Lqb/a;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lqb/a;->b()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const-string p2, "activity"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 24
    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p2, Landroid/app/ActivityManager;

    .line 29
    .line 30
    const v0, 0x7fffffff

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "getRunningServices(...)"

    .line 38
    .line 39
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p2, Ljava/lang/Iterable;

    .line 43
    .line 44
    instance-of v0, p2, Ljava/util/Collection;

    .line 45
    .line 46
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move-object v0, p2

    .line 52
    check-cast v0, Ljava/util/Collection;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 76
    .line 77
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    sget-object p2, Lsb/d;->a:Lsb/d$a;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lsb/d$a;->d(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/16 v2, 0x1f

    .line 106
    .line 107
    if-lt v0, v2, :cond_6

    .line 108
    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    sget-object p2, Lcom/pravera/flutter_foreground_task/service/RestartReceiver;->b:Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "Turn off battery optimization to restart service in the background."

    .line 114
    .line 115
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_6
    new-instance p2, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lqb/a;->b:Lqb/a$a;

    .line 124
    .line 125
    const-string v1, "com.pravera.flutter_foreground_task.action.restart"

    .line 126
    .line 127
    invoke-virtual {v0, p1, v1}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p2}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
