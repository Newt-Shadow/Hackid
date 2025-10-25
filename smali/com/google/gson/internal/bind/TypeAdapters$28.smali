.class Lcom/google/gson/internal/bind/TypeAdapters$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters;->a(Lcom/google/gson/reflect/a;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/reflect/a;

.field final synthetic b:Lcom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/gson/reflect/a;Lcom/google/gson/TypeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$28;->a:Lcom/google/gson/reflect/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$28;->b:Lcom/google/gson/TypeAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/a;)Lcom/google/gson/TypeAdapter;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$28;->a:Lcom/google/gson/reflect/a;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/google/gson/reflect/a;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$28;->b:Lcom/google/gson/TypeAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method
