.class public final enum Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

.field public static final enum DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

.field public static final enum MOBILE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

.field public static final enum RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;
    .locals 3

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 2
    .line 3
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->MOBILE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 4
    .line 5
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 2
    .line 3
    const-string v1, "RECOMMENDED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 10
    .line 11
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 12
    .line 13
    const-string v1, "MOBILE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->MOBILE:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 20
    .line 21
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 22
    .line 23
    const-string v1, "DESKTOP"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 30
    .line 31
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->$values()[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 36
    .line 37
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
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(I)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->values()[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->toValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne p0, v4, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "No enum constant: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;
    .locals 1

    .line 1
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equalsValue(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->value:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public toValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/PreferredContentModeOptionType;->value:I

    .line 2
    .line 3
    return v0
.end method
