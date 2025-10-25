.class public final enum Leb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Leb/a;

.field public static final enum b:Leb/a;

.field public static final enum c:Leb/a;

.field private static final synthetic d:[Leb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Leb/a;

    .line 2
    .line 3
    const-string v1, "NEVER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Leb/a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Leb/a;->a:Leb/a;

    .line 10
    .line 11
    new-instance v0, Leb/a;

    .line 12
    .line 13
    const-string v1, "ALWAYS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Leb/a;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Leb/a;->b:Leb/a;

    .line 20
    .line 21
    new-instance v0, Leb/a;

    .line 22
    .line 23
    const-string v1, "IDENTIFIED_ONLY"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Leb/a;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Leb/a;->c:Leb/a;

    .line 30
    .line 31
    invoke-static {}, Leb/a;->a()[Leb/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Leb/a;->d:[Leb/a;

    .line 36
    .line 37
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

.method private static final synthetic a()[Leb/a;
    .locals 3

    .line 1
    sget-object v0, Leb/a;->a:Leb/a;

    sget-object v1, Leb/a;->b:Leb/a;

    sget-object v2, Leb/a;->c:Leb/a;

    filled-new-array {v0, v1, v2}, [Leb/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Leb/a;
    .locals 1

    .line 1
    const-class v0, Leb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leb/a;

    return-object p0
.end method

.method public static values()[Leb/a;
    .locals 1

    .line 1
    sget-object v0, Leb/a;->d:[Leb/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leb/a;

    return-object v0
.end method
