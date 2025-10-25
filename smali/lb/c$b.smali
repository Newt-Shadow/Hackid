.class final Llb/c$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/c;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/posthog/internal/PostHogBatchEvent;

.field final synthetic f:Llb/c;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/posthog/internal/PostHogBatchEvent;Llb/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/c$b;->e:Lcom/posthog/internal/PostHogBatchEvent;

    iput-object p2, p0, Llb/c$b;->f:Llb/c;

    iput-object p3, p0, Llb/c$b;->g:Ljava/lang/String;

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
    iget-object v0, p0, Llb/c$b;->e:Lcom/posthog/internal/PostHogBatchEvent;

    .line 7
    .line 8
    iget-object v1, p0, Llb/c$b;->f:Llb/c;

    .line 9
    .line 10
    invoke-static {v1}, Llb/c;->a(Llb/c;)Leb/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Leb/d;->f()Llb/g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Llb/g;->c()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/posthog/internal/PostHogBatchEvent;->setSentAt(Ljava/util/Date;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Llb/c$b;->f:Llb/c;

    .line 26
    .line 27
    iget-object v1, p0, Llb/c$b;->e:Lcom/posthog/internal/PostHogBatchEvent;

    .line 28
    .line 29
    iget-object v2, p0, Llb/c$b;->g:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Llb/c;->c(Llb/c;Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Llb/c$b;->f:Llb/c;

    .line 35
    .line 36
    invoke-static {v0}, Llb/c;->a(Llb/c;)Leb/d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Llb/c$b;->e:Lcom/posthog/internal/PostHogBatchEvent;

    .line 45
    .line 46
    sget-object v2, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 49
    .line 50
    invoke-direct {v3, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 51
    .line 52
    .line 53
    instance-of p1, v3, Ljava/io/BufferedWriter;

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    check-cast v3, Ljava/io/BufferedWriter;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/io/BufferedWriter;

    .line 61
    .line 62
    const/16 v2, 0x2000

    .line 63
    .line 64
    invoke-direct {p1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 65
    .line 66
    .line 67
    move-object v3, p1

    .line 68
    :goto_0
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Llb/c$b$a;

    .line 73
    .line 74
    invoke-direct {v0}, Llb/c$b$a;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v1, v0, v3}, Lcom/google/gson/Gson;->A(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Llb/c$b;->a(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
