.class public Lcom/yandex/metrica/impl/ob/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/qk;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/al;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/bl;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/al;->a:I

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/yandex/metrica/impl/ob/al;->a:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p1, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p1, Lcom/yandex/metrica/impl/ob/bl;->j:Ljava/lang/Integer;

    .line 39
    .line 40
    :cond_0
    return-void
.end method
