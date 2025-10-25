.class public final Lcom/yandex/metrica/impl/ob/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/nm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/nm<",
        "Ljava/io/File;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/c7;

.field private final b:Lcom/yandex/metrica/impl/ob/h7;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/c7;Lcom/yandex/metrica/impl/ob/h7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/i7;->a:Lcom/yandex/metrica/impl/ob/c7;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/i7;->b:Lcom/yandex/metrica/impl/ob/h7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/i7;->b:Lcom/yandex/metrica/impl/ob/h7;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i7;->a:Lcom/yandex/metrica/impl/ob/c7;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/h7;->a(Ljava/io/File;Lcom/yandex/metrica/impl/ob/c7;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
