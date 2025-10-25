.class final Ltd/s1;
.super Ltd/y1;
.source "SourceFile"


# instance fields
.field private final e:Lid/l;


# direct methods
.method public constructor <init>(Lid/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/y1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltd/s1;->e:Lid/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/s1;->e:Lid/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
