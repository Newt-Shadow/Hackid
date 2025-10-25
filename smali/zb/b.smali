.class public final enum Lzb/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lzb/b;

.field public static final enum b:Lzb/b;

.field public static final enum c:Lzb/b;

.field private static final synthetic d:[Lzb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lzb/b;

    .line 2
    .line 3
    const-string v1, "LIBRARY_V3"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lzb/b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lzb/b;->a:Lzb/b;

    .line 10
    .line 11
    new-instance v1, Lzb/b;

    .line 12
    .line 13
    const-string v2, "LIBRARY_V4"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lzb/b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lzb/b;->b:Lzb/b;

    .line 20
    .line 21
    new-instance v2, Lzb/b;

    .line 22
    .line 23
    const-string v3, "NONE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lzb/b;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lzb/b;->c:Lzb/b;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lzb/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lzb/b;->d:[Lzb/b;

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

.method public static valueOf(Ljava/lang/String;)Lzb/b;
    .locals 1

    .line 1
    const-class v0, Lzb/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzb/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lzb/b;
    .locals 1

    .line 1
    sget-object v0, Lzb/b;->d:[Lzb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lzb/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lzb/b;

    .line 8
    .line 9
    return-object v0
.end method
