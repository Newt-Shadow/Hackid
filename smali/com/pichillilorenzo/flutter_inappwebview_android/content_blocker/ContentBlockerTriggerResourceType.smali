.class public final enum Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum FONT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum IMAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum MEDIA:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum POPUP:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum RAW:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

.field public static final enum SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;
    .locals 9

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 2
    .line 3
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 4
    .line 5
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 6
    .line 7
    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 8
    .line 9
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->FONT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 10
    .line 11
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 12
    .line 13
    sget-object v6, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->MEDIA:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 14
    .line 15
    sget-object v7, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->POPUP:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 16
    .line 17
    sget-object v8, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "document"

    .line 5
    .line 6
    const-string v3, "DOCUMENT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 12
    .line 13
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "image"

    .line 17
    .line 18
    const-string v3, "IMAGE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 24
    .line 25
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "style-sheet"

    .line 29
    .line 30
    const-string v3, "STYLE_SHEET"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 36
    .line 37
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "script"

    .line 41
    .line 42
    const-string v3, "SCRIPT"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 48
    .line 49
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "font"

    .line 53
    .line 54
    const-string v3, "FONT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->FONT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 60
    .line 61
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "svg-document"

    .line 65
    .line 66
    const-string v3, "SVG_DOCUMENT"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 72
    .line 73
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "media"

    .line 77
    .line 78
    const-string v3, "MEDIA"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->MEDIA:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 84
    .line 85
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "popup"

    .line 89
    .line 90
    const-string v3, "POPUP"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->POPUP:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 96
    .line 97
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "raw"

    .line 102
    .line 103
    const-string v3, "RAW"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 109
    .line 110
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->$values()[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 115
    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->values()[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

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
    iget-object v4, v3, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "No enum constant: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;
    .locals 1

    .line 1
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equalsValue(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
