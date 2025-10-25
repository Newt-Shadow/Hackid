.class public Lcom/yandex/metrica/impl/ob/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ym;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ym;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ym;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/zm;-><init>(Lcom/yandex/metrica/impl/ob/ym;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ym;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zm;->a:Lcom/yandex/metrica/impl/ob/ym;

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zm;->a:Lcom/yandex/metrica/impl/ob/ym;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ym;->a([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getEncryptionMode()Lcom/yandex/metrica/networktasks/api/RequestBodyEncryptionMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/networktasks/api/RequestBodyEncryptionMode;->b:Lcom/yandex/metrica/networktasks/api/RequestBodyEncryptionMode;

    .line 2
    .line 3
    return-object v0
.end method
