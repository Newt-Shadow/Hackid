.class public final enum Lcf/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcf/h;

.field public static final enum c:Lcf/h;

.field public static final enum d:Lcf/h;

.field private static final synthetic e:[Lcf/h;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcf/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "\r"

    .line 5
    .line 6
    const-string v3, "CR"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcf/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcf/h;->b:Lcf/h;

    .line 12
    .line 13
    new-instance v0, Lcf/h;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "\r\n"

    .line 17
    .line 18
    const-string v3, "CRLF"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcf/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcf/h;->c:Lcf/h;

    .line 24
    .line 25
    new-instance v0, Lcf/h;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "\n"

    .line 29
    .line 30
    const-string v3, "LF"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcf/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcf/h;->d:Lcf/h;

    .line 36
    .line 37
    invoke-static {}, Lcf/h;->a()[Lcf/h;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcf/h;->e:[Lcf/h;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const-string p1, "lineSeparator"

    .line 5
    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcf/h;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private static synthetic a()[Lcf/h;
    .locals 3

    .line 1
    sget-object v0, Lcf/h;->b:Lcf/h;

    .line 2
    .line 3
    sget-object v1, Lcf/h;->c:Lcf/h;

    .line 4
    .line 5
    sget-object v2, Lcf/h;->d:Lcf/h;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcf/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcf/h;
    .locals 1

    .line 1
    const-class v0, Lcf/h;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcf/h;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcf/h;
    .locals 1

    .line 1
    sget-object v0, Lcf/h;->e:[Lcf/h;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcf/h;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcf/h;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcf/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
