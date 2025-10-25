.class final Llb/c$d;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/internal/PostHogFlagsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Llb/c;

.field final synthetic f:Lcom/posthog/internal/PostHogFlagsRequest;


# direct methods
.method constructor <init>(Llb/c;Lcom/posthog/internal/PostHogFlagsRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/c$d;->e:Llb/c;

    iput-object p2, p0, Llb/c$d;->f:Lcom/posthog/internal/PostHogFlagsRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/c$d;->e:Llb/c;

    .line 7
    .line 8
    invoke-static {v0}, Llb/c;->a(Llb/c;)Leb/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Llb/c$d;->f:Lcom/posthog/internal/PostHogFlagsRequest;

    .line 17
    .line 18
    sget-object v2, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 21
    .line 22
    invoke-direct {v3, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    instance-of p1, v3, Ljava/io/BufferedWriter;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    check-cast v3, Ljava/io/BufferedWriter;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/io/BufferedWriter;

    .line 33
    .line 34
    const/16 v2, 0x2000

    .line 35
    .line 36
    invoke-direct {p1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 37
    .line 38
    .line 39
    move-object v3, p1

    .line 40
    :goto_0
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Llb/c$d$a;

    .line 45
    .line 46
    invoke-direct {v0}, Llb/c$d$a;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v1, v0, v3}, Lcom/google/gson/Gson;->A(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Llb/c$d;->a(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
