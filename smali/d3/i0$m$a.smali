.class Ld3/i0$m$a;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/i0$m;-><init>(Ld3/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld3/i0;

.field final synthetic b:Ld3/i0$m;


# direct methods
.method constructor <init>(Ld3/i0$m;Ld3/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 2
    .line 3
    iput-object p2, p0, Ld3/i0$m$a;->a:Ld3/i0;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 2
    .line 3
    iget-object p2, p2, Ld3/i0$m;->c:Ld3/i0;

    .line 4
    .line 5
    invoke-static {p2}, Ld3/i0;->F(Ld3/i0;)Landroid/media/AudioTrack;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 17
    .line 18
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 19
    .line 20
    invoke-static {p1}, Ld3/i0;->G(Ld3/i0;)Ld3/w$c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 27
    .line 28
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 29
    .line 30
    invoke-static {p1}, Ld3/i0;->A(Ld3/i0;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 37
    .line 38
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 39
    .line 40
    invoke-static {p1}, Ld3/i0;->G(Ld3/i0;)Ld3/w$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ld3/w$c;->f()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 2
    .line 3
    iget-object v0, v0, Ld3/i0$m;->c:Ld3/i0;

    .line 4
    .line 5
    invoke-static {v0}, Ld3/i0;->F(Ld3/i0;)Landroid/media/AudioTrack;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 17
    .line 18
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 19
    .line 20
    invoke-static {p1}, Ld3/i0;->G(Ld3/i0;)Ld3/w$c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 27
    .line 28
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 29
    .line 30
    invoke-static {p1}, Ld3/i0;->A(Ld3/i0;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Ld3/i0$m$a;->b:Ld3/i0$m;

    .line 37
    .line 38
    iget-object p1, p1, Ld3/i0$m;->c:Ld3/i0;

    .line 39
    .line 40
    invoke-static {p1}, Ld3/i0;->G(Ld3/i0;)Ld3/w$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ld3/w$c;->f()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
