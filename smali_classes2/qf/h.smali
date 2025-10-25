.class public final enum Lqf/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lqf/h;

.field public static final enum b:Lqf/h;

.field public static final enum c:Lqf/h;

.field private static final synthetic d:[Lqf/h;

.field private static final synthetic e:Lcd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lqf/h;

    .line 2
    .line 3
    const-string v1, "RELEASE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lqf/h;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lqf/h;->a:Lqf/h;

    .line 10
    .line 11
    new-instance v0, Lqf/h;

    .line 12
    .line 13
    const-string v1, "LOOP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lqf/h;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lqf/h;->b:Lqf/h;

    .line 20
    .line 21
    new-instance v0, Lqf/h;

    .line 22
    .line 23
    const-string v1, "STOP"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lqf/h;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lqf/h;->c:Lqf/h;

    .line 30
    .line 31
    invoke-static {}, Lqf/h;->a()[Lqf/h;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lqf/h;->d:[Lqf/h;

    .line 36
    .line 37
    invoke-static {v0}, Lcd/b;->a([Ljava/lang/Enum;)Lcd/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lqf/h;->e:Lcd/a;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final synthetic a()[Lqf/h;
    .locals 3

    .line 1
    sget-object v0, Lqf/h;->a:Lqf/h;

    sget-object v1, Lqf/h;->b:Lqf/h;

    sget-object v2, Lqf/h;->c:Lqf/h;

    filled-new-array {v0, v1, v2}, [Lqf/h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqf/h;
    .locals 1

    .line 1
    const-class v0, Lqf/h;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqf/h;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lqf/h;
    .locals 1

    .line 1
    sget-object v0, Lqf/h;->d:[Lqf/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lqf/h;

    .line 8
    .line 9
    return-object v0
.end method
