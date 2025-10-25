.class public final Lu8/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/l$b;
    }
.end annotation


# static fields
.field public static final c:Lu8/l$b;


# instance fields
.field private final a:Lh7/f;

.field private final b:Lx8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu8/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu8/l$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu8/l;->c:Lu8/l$b;

    return-void
.end method

.method public constructor <init>(Lh7/f;Lx8/j;Lad/i;Lu8/q0;)V
    .locals 6

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "settings"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "backgroundDispatcher"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionsActivityLifecycleCallbacks"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lu8/l;->a:Lh7/f;

    .line 25
    .line 26
    iput-object p2, p0, Lu8/l;->b:Lx8/j;

    .line 27
    .line 28
    const-string p2, "Initializing Firebase Sessions 3.0.0."

    .line 29
    .line 30
    const-string v0, "FirebaseSessions"

    .line 31
    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of p2, p1, Landroid/app/Application;

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    check-cast p1, Landroid/app/Application;

    .line 48
    .line 49
    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Ltd/m0;->a(Lad/i;)Ltd/l0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    new-instance v3, Lu8/l$a;

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-direct {v3, p0, p4, p1}, Lu8/l$a;-><init>(Lu8/l;Lu8/q0;Lad/e;)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x3

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v0 .. v5}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string p3, "Failed to register lifecycle callbacks, unexpected context "

    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 p1, 0x2e

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lu8/l;)Lh7/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/l;->a:Lh7/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lu8/l;)Lx8/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lu8/l;->b:Lx8/j;

    .line 2
    .line 3
    return-object p0
.end method
