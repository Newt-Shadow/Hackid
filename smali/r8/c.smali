.class public final enum Lr8/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lr8/c;

.field public static final enum b:Lr8/c;

.field private static final synthetic c:[Lr8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr8/c;

    .line 2
    .line 3
    const-string v1, "LOW_POWER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lr8/c;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lr8/c;->a:Lr8/c;

    .line 10
    .line 11
    new-instance v0, Lr8/c;

    .line 12
    .line 13
    const-string v1, "HIGH_SPEED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lr8/c;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lr8/c;->b:Lr8/c;

    .line 20
    .line 21
    invoke-static {}, Lr8/c;->a()[Lr8/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lr8/c;->c:[Lr8/c;

    .line 26
    .line 27
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

.method private static synthetic a()[Lr8/c;
    .locals 2

    .line 1
    sget-object v0, Lr8/c;->a:Lr8/c;

    .line 2
    .line 3
    sget-object v1, Lr8/c;->b:Lr8/c;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lr8/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr8/c;
    .locals 1

    .line 1
    const-class v0, Lr8/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr8/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lr8/c;
    .locals 1

    .line 1
    sget-object v0, Lr8/c;->c:[Lr8/c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lr8/c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lr8/c;

    .line 8
    .line 9
    return-object v0
.end method
