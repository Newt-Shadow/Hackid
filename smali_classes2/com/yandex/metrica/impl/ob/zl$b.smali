.class public final enum Lcom/yandex/metrica/impl/ob/zl$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/zl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/zl$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/zl$b;

.field public static final enum e:Lcom/yandex/metrica/impl/ob/zl$b;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/ob/zl$b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 2
    .line 3
    const-string v1, "EQUALS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->b:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 10
    .line 11
    new-instance v1, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 12
    .line 13
    const-string v2, "CONTAINS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/yandex/metrica/impl/ob/zl$b;->c:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 20
    .line 21
    new-instance v2, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 22
    .line 23
    const-string v3, "MATCHES"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/yandex/metrica/impl/ob/zl$b;->d:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 30
    .line 31
    new-instance v3, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 32
    .line 33
    const-string v4, "DOES_NOT_MATCH"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/yandex/metrica/impl/ob/zl$b;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/yandex/metrica/impl/ob/zl$b;->e:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/yandex/metrica/impl/ob/zl$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->f:[Lcom/yandex/metrica/impl/ob/zl$b;

    .line 46
    .line 47
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
    iput p3, p0, Lcom/yandex/metrica/impl/ob/zl$b;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 4

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/zl$b;->values()[Lcom/yandex/metrica/impl/ob/zl$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x4

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-object v2, v0, v1

    .line 10
    .line 11
    iget v3, v2, Lcom/yandex/metrica/impl/ob/zl$b;->a:I

    .line 12
    .line 13
    if-ne v3, p0, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lcom/yandex/metrica/impl/ob/zl$b;->b:Lcom/yandex/metrica/impl/ob/zl$b;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yandex/metrica/impl/ob/zl$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/zl$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/zl$b;->f:[Lcom/yandex/metrica/impl/ob/zl$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/zl$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/yandex/metrica/impl/ob/zl$b;

    .line 8
    .line 9
    return-object v0
.end method
