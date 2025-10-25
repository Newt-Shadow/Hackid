.class public final enum Lcom/yandex/metrica/impl/ob/Em;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/Em;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/Em;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/Em;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/Em;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/Em;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Em;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/Em;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/Em;->b:Lcom/yandex/metrica/impl/ob/Em;

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/Em;

    .line 12
    .line 13
    const-string v2, "EXTERNALLY_ENCRYPTED_EVENT_CRYPTER"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/yandex/metrica/impl/ob/Em;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/yandex/metrica/impl/ob/Em;->c:Lcom/yandex/metrica/impl/ob/Em;

    .line 20
    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/ob/Em;

    .line 22
    .line 23
    const-string v3, "AES_VALUE_ENCRYPTION"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/yandex/metrica/impl/ob/Em;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/yandex/metrica/impl/ob/Em;->d:Lcom/yandex/metrica/impl/ob/Em;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/impl/ob/Em;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/yandex/metrica/impl/ob/Em;->e:[Lcom/yandex/metrica/impl/ob/Em;

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
    iput p3, p0, Lcom/yandex/metrica/impl/ob/Em;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/Em;
    .locals 5

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Em;->values()[Lcom/yandex/metrica/impl/ob/Em;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget v3, v2, Lcom/yandex/metrica/impl/ob/Em;->a:I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/yandex/metrica/impl/ob/Em;->b:Lcom/yandex/metrica/impl/ob/Em;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Em;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/Em;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yandex/metrica/impl/ob/Em;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/Em;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Em;->e:[Lcom/yandex/metrica/impl/ob/Em;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/Em;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/yandex/metrica/impl/ob/Em;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Em;->a:I

    return v0
.end method
