.class final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldReflectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/gson/internal/a0;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/a0;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$c;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->b:Lcom/google/gson/internal/a0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->b:Lcom/google/gson/internal/a0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/gson/internal/a0;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method h(Ljava/lang/Object;Lc9/a;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;->b(Lc9/a;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
