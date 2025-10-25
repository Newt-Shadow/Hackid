.class public final Lcom/pravera/flutter_foreground_task/service/RebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/pravera/flutter_foreground_task/service/ForegroundService;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lqb/a;->b:Lqb/a$a;

    .line 9
    .line 10
    const-string v2, "com.pravera.flutter_foreground_task.action.reboot"

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lqb/a$a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/content/a;->o(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lsb/b;->a:Lsb/b$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lsb/b$a;->a(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object v0, Lqb/a;->b:Lqb/a$a;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lqb/a$a;->a(Landroid/content/Context;)Lqb/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lqb/a;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    sget-object v0, Lqb/e;->f:Lqb/e$a;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lqb/e$a;->b(Landroid/content/Context;)Lqb/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "android.intent.action.QUICKBOOT_POWERON"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v0}, Lqb/e;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/pravera/flutter_foreground_task/service/RebootReceiver;->a(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 73
    .line 74
    invoke-static {p2, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Lqb/e;->d()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/pravera/flutter_foreground_task/service/RebootReceiver;->a(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_0
    return-void
.end method
