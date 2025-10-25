.class abstract Lcom/yandex/metrica/impl/ob/Sm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/fn<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field protected final c:Lcom/yandex/metrica/impl/ob/cm;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Sm;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Sm;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Sm;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Sm;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Sm;->a:I

    .line 2
    .line 3
    return v0
.end method
