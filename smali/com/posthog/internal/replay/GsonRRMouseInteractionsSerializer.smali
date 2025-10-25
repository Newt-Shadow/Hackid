.class public final Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/p;
.implements Lcom/google/gson/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/p;",
        "Lcom/google/gson/h;"
    }
.end annotation


# instance fields
.field private final config:Leb/d;


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->config:Leb/d;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/internal/replay/RRMouseInteraction;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p2, Lcom/posthog/internal/replay/RRMouseInteraction;->Companion:Lcom/posthog/internal/replay/RRMouseInteraction$Companion;

    invoke-virtual {p1}, Lcom/google/gson/i;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/posthog/internal/replay/RRMouseInteraction$Companion;->fromValue(I)Lcom/posthog/internal/replay/RRMouseInteraction;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 3
    iget-object p3, p0, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->config:Leb/d;

    invoke-virtual {p3}, Leb/d;->o()Llb/i;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/i;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a known type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Llb/i;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/posthog/internal/replay/RRMouseInteraction;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/posthog/internal/replay/RRMouseInteraction;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeOfSrc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/posthog/internal/replay/RRMouseInteraction;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/gson/o;->c(Ljava/lang/Object;)Lcom/google/gson/i;

    move-result-object p1

    const-string p2, "context.serialize(src.value)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;
    .locals 0

    .line 1
    check-cast p1, Lcom/posthog/internal/replay/RRMouseInteraction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/replay/GsonRRMouseInteractionsSerializer;->serialize(Lcom/posthog/internal/replay/RRMouseInteraction;Ljava/lang/reflect/Type;Lcom/google/gson/o;)Lcom/google/gson/i;

    move-result-object p1

    return-object p1
.end method
