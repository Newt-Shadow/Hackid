.class public final synthetic Lcom/google/gson/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/a0;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Constructor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/k;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/k;->a:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/google/gson/internal/u;->g(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
