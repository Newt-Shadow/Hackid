.class final Llb/c$f;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/c;-><init>(Leb/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Llb/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llb/c$f;

    invoke-direct {v0}, Llb/c$f;-><init>()V

    sput-object v0, Llb/c$f;->e:Llb/c$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lne/v;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lne/v;->e:Lne/v$a;

    .line 2
    .line 3
    const-string v1, "application/json; charset=utf-8"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lne/v$a;->a(Ljava/lang/String;)Lne/v;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llb/c$f;->b()Lne/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
