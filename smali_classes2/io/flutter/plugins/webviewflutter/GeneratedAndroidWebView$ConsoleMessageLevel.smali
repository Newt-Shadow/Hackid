.class public final enum Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsoleMessageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum DEBUG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum ERROR:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum LOG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum TIP:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum UNKNOWN:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

.field public static final enum WARNING:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;


# instance fields
.field final index:I


# direct methods
.method private static synthetic $values()[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;
    .locals 6

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->DEBUG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 2
    .line 3
    sget-object v1, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->ERROR:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 4
    .line 5
    sget-object v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->LOG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 6
    .line 7
    sget-object v3, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->TIP:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 8
    .line 9
    sget-object v4, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->WARNING:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 10
    .line 11
    sget-object v5, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->UNKNOWN:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 2
    .line 3
    const-string v1, "DEBUG"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->DEBUG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 12
    .line 13
    const-string v1, "ERROR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->ERROR:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 20
    .line 21
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 22
    .line 23
    const-string v1, "LOG"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->LOG:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 30
    .line 31
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 32
    .line 33
    const-string v1, "TIP"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->TIP:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 40
    .line 41
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 42
    .line 43
    const-string v1, "WARNING"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->WARNING:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 50
    .line 51
    new-instance v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 52
    .line 53
    const-string v1, "UNKNOWN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->UNKNOWN:Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 60
    .line 61
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->$values()[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->$VALUES:[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 66
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->index:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->$VALUES:[Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$ConsoleMessageLevel;

    .line 8
    .line 9
    return-object v0
.end method
