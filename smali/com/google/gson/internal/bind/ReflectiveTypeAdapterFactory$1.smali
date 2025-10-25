.class Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/a;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->a:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lc9/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc9/a;->G()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method public e(Lc9/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lc9/c;->x()Lc9/c;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AnonymousOrNonStaticLocalClassAdapter"

    return-object v0
.end method
