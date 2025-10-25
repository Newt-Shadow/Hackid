.class public final Lhb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;
.implements Lcom/posthog/internal/replay/PostHogSessionReplayHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb/l$a;
    }
.end annotation


# static fields
.field public static final o:Lhb/l$a;

.field private static volatile p:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lfb/b;

.field private final c:Lgb/b;

.field private final d:Ljava/util/WeakHashMap;

.field private final e:Ljava/util/List;

.field private final f:Lxc/d;

.field private final g:Lxc/d;

.field private final h:Landroid/graphics/Paint;

.field private volatile i:Z

.field private j:Leb/h;

.field private volatile k:Z

.field private final l:Lgc/d;

.field private final m:Lgc/e;

.field private final n:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhb/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhb/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lhb/l;->o:Lhb/l$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfb/b;Lgb/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mainHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lhb/l;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lhb/l;->b:Lfb/b;

    .line 22
    .line 23
    iput-object p3, p0, Lhb/l;->c:Lgb/b;

    .line 24
    .line 25
    new-instance p1, Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    const/16 p1, 0x80

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/16 p2, 0x90

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/16 p3, 0xe0

    .line 45
    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const/16 v0, 0x10

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lhb/l;->e:Ljava/util/List;

    .line 65
    .line 66
    sget-object p1, Lhb/l$d;->e:Lhb/l$d;

    .line 67
    .line 68
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lhb/l;->f:Lxc/d;

    .line 73
    .line 74
    new-instance p1, Lhb/l$c;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lhb/l$c;-><init>(Lhb/l;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lhb/l;->g:Lxc/d;

    .line 84
    .line 85
    new-instance p1, Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .line 89
    .line 90
    const/high16 p2, -0x1000000

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lhb/l;->h:Landroid/graphics/Paint;

    .line 96
    .line 97
    new-instance p1, Lhb/f;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lhb/f;-><init>(Lhb/l;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lhb/l;->l:Lgc/d;

    .line 103
    .line 104
    new-instance p1, Lhb/g;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lhb/g;-><init>(Lhb/l;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lhb/l;->m:Lgc/e;

    .line 110
    .line 111
    sget-object p1, Lxc/h;->b:Lxc/h;

    .line 112
    .line 113
    new-instance p2, Lhb/l$e;

    .line 114
    .line 115
    invoke-direct {p2, p0}, Lhb/l$e;-><init>(Lhb/l;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lhb/l;->n:Lxc/d;

    .line 123
    .line 124
    return-void
.end method

.method private final A(Landroid/view/View;Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lhb/l;->c:Lgb/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lgb/b;->a()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lhb/k;

    .line 14
    .line 15
    invoke-direct {v2, p1, p0, v0, p2}, Lhb/k;-><init>(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    const-wide/16 v1, 0x3e8

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    iget-object p2, p0, Lhb/l;->b:Lfb/b;

    .line 31
    .line 32
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "Session Replay findMaskableComposeWidgets failed: "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method private static final B(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "$view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$latch"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "$maskableWidgets"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    instance-of v0, p0, Landroidx/compose/ui/node/RootForTest;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    check-cast v0, Landroidx/compose/ui/node/RootForTest;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_8

    .line 31
    .line 32
    invoke-interface {v0}, Landroidx/compose/ui/node/RootForTest;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    const/4 p0, 0x1

    .line 41
    invoke-static {v0, p0}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->getAllSemanticsNodes(Landroidx/compose/ui/semantics/SemanticsOwner;Z)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_9

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsProperties;->getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 110
    .line 111
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget-object v7, Lhb/b;->a:Lhb/b;

    .line 124
    .line 125
    invoke-virtual {v7}, Lhb/b;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v6, v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v7}, Lhb/b;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v8, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->get(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_3

    .line 154
    .line 155
    move v7, p0

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    const/4 v7, 0x0

    .line 158
    :goto_2
    if-eqz v7, :cond_4

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {p1, v1}, Lhb/l;->r0(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    if-nez v6, :cond_2

    .line 173
    .line 174
    if-nez v2, :cond_5

    .line 175
    .line 176
    if-eqz v3, :cond_6

    .line 177
    .line 178
    :cond_5
    iget-object v2, p1, Lhb/l;->b:Lfb/b;

    .line 179
    .line 180
    invoke-virtual {v2}, Lfb/b;->j0()Lhb/n;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lhb/n;->d()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_7

    .line 189
    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    if-eqz v5, :cond_2

    .line 194
    .line 195
    iget-object v2, p1, Lhb/l;->b:Lfb/b;

    .line 196
    .line 197
    invoke-virtual {v2}, Lfb/b;->j0()Lhb/n;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lhb/n;->c()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_2

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {p1, v1}, Lhb/l;->r0(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInWindow()Landroidx/compose/ui/geometry/Rect;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {p1, v1}, Lhb/l;->r0(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_8
    :goto_4
    iget-object p3, p1, Lhb/l;->b:Lfb/b;

    .line 234
    .line 235
    invoke-virtual {p3}, Leb/d;->o()Llb/i;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v1, "View is not a RootForTest: "

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-interface {p3, p0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    :try_start_1
    iget-object p1, p1, Lhb/l;->b:Lfb/b;

    .line 265
    .line 266
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance p3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v0, "Session Replay findMaskableComposeWidgets (main thread) failed: "

    .line 276
    .line 277
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-interface {p1, p0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    .line 289
    .line 290
    :cond_9
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :catchall_1
    move-exception p0

    .line 295
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 296
    .line 297
    .line 298
    throw p0
.end method

.method private final C(Landroid/view/View;Ljava/util/List;Ljava/util/Set;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lhb/l;->R(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lhb/l;->A(Landroid/view/View;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p0, p1, v0, v2, v1}, Lhb/l;->V(Lhb/l;Landroid/view/View;ZILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-static {p0, p1, v1, v2, v1}, Lhb/l;->N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_13

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_2
    instance-of v3, p1, Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v3, :cond_b

    .line 57
    .line 58
    move-object p3, p1

    .line 59
    check-cast p3, Landroid/widget/TextView;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move-object v3, v1

    .line 73
    :goto_0
    if-eqz v3, :cond_5

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v3, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    :goto_1
    move v3, v2

    .line 85
    :goto_2
    if-nez v3, :cond_6

    .line 86
    .line 87
    invoke-direct {p0, p3}, Lhb/l;->m0(Landroid/widget/TextView;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move v3, v0

    .line 93
    :goto_3
    invoke-virtual {p3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    goto :goto_4

    .line 104
    :cond_7
    move-object v4, v1

    .line 105
    :goto_4
    if-nez v3, :cond_a

    .line 106
    .line 107
    if-eqz v4, :cond_8

    .line 108
    .line 109
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_9

    .line 114
    .line 115
    :cond_8
    move v0, v2

    .line 116
    :cond_9
    if-nez v0, :cond_a

    .line 117
    .line 118
    invoke-direct {p0, p3}, Lhb/l;->m0(Landroid/widget/TextView;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    :cond_a
    if-eqz v3, :cond_13

    .line 123
    .line 124
    invoke-static {p0, p1, v1, v2, v1}, Lhb/l;->N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_13

    .line 129
    .line 130
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_b
    instance-of v3, p1, Landroid/widget/Spinner;

    .line 136
    .line 137
    if-eqz v3, :cond_c

    .line 138
    .line 139
    move-object p3, p1

    .line 140
    check-cast p3, Landroid/widget/Spinner;

    .line 141
    .line 142
    invoke-direct {p0, p3}, Lhb/l;->l0(Landroid/widget/Spinner;)Z

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    if-eqz p3, :cond_13

    .line 147
    .line 148
    invoke-static {p0, p1, v1, v2, v1}, Lhb/l;->N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_13

    .line 153
    .line 154
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :cond_c
    instance-of v3, p1, Landroid/widget/ImageView;

    .line 160
    .line 161
    if-eqz v3, :cond_d

    .line 162
    .line 163
    move-object p3, p1

    .line 164
    check-cast p3, Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-direct {p0, p3}, Lhb/l;->k0(Landroid/widget/ImageView;)Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_13

    .line 171
    .line 172
    invoke-static {p0, p1, v1, v2, v1}, Lhb/l;->N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_13

    .line 177
    .line 178
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_d
    instance-of v3, p1, Landroid/webkit/WebView;

    .line 183
    .line 184
    if-eqz v3, :cond_e

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lhb/l;->P(Landroid/view/View;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_13

    .line 191
    .line 192
    invoke-static {p0, p1, v1, v2, v1}, Lhb/l;->N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_13

    .line 197
    .line 198
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_e
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 203
    .line 204
    if-eqz v1, :cond_13

    .line 205
    .line 206
    check-cast p1, Landroid/view/ViewGroup;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-lez v1, :cond_13

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    move v3, v0

    .line 219
    :goto_5
    if-ge v3, v1, :cond_13

    .line 220
    .line 221
    iget-boolean v4, p0, Lhb/l;->k:Z

    .line 222
    .line 223
    if-eqz v4, :cond_f

    .line 224
    .line 225
    iget-object p1, p0, Lhb/l;->b:Lfb/b;

    .line 226
    .line 227
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string p2, "Session Replay screenshot discarded due to screen changes."

    .line 232
    .line 233
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return v0

    .line 237
    :cond_f
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    if-nez v4, :cond_10

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_10
    invoke-direct {p0, v4}, Lhb/l;->Z(Landroid/view/View;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_11

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_11
    invoke-direct {p0, v4, p2, p3}, Lhb/l;->C(Landroid/view/View;Ljava/util/List;Ljava/util/Set;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-nez v4, :cond_12

    .line 256
    .line 257
    return v0

    .line 258
    :cond_12
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_13
    :goto_7
    return v2
.end method

.method static synthetic D(Lhb/l;Landroid/view/View;Ljava/util/List;Ljava/util/Set;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    new-instance p3, Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lhb/l;->C(Landroid/view/View;Ljava/util/List;Ljava/util/Set;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private final E(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/posthog/internal/replay/RRWireframe;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/posthog/internal/replay/RRWireframe;->getChildWireframes()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lhb/l;->E(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method private final F(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v0, 0x0

    .line 15
    move v5, v0

    .line 16
    :goto_0
    if-ge v5, v4, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-direct {v1, v2, v5}, Lhb/l;->K(Landroid/view/MotionEvent;I)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-int v0, v0

    .line 27
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 32
    .line 33
    invoke-static {v0, v6}, Lgb/o;->f(IF)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-direct {v1, v2, v5}, Lhb/l;->L(Landroid/view/MotionEvent;I)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    float-to-int v0, v0

    .line 42
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    invoke-static {v0, v6}, Lgb/o;->f(IF)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    new-instance v0, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const/16 v14, 0x70

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    move-object v6, v0

    .line 61
    move-object/from16 v8, p4

    .line 62
    .line 63
    invoke-direct/range {v6 .. v15}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;-><init>(ILcom/posthog/internal/replay/RRMouseInteraction;IILcom/posthog/internal/replay/RRIncrementalSource;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    new-instance v6, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    .line 68
    move-wide/from16 v7, p1

    .line 69
    .line 70
    :try_start_1
    invoke-direct {v6, v0, v7, v8}, Lcom/posthog/internal/replay/RRIncrementalMouseInteractionEvent;-><init>(Lcom/posthog/internal/replay/RRIncrementalMouseInteractionData;J)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    move-wide/from16 v7, p1

    .line 81
    .line 82
    :goto_1
    iget-object v6, v1, Lhb/l;->b:Lfb/b;

    .line 83
    .line 84
    invoke-virtual {v6}, Leb/d;->o()Llb/i;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v10, "Reading MotionEvent pointers failed: "

    .line 94
    .line 95
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/16 v0, 0x2e

    .line 102
    .line 103
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v6, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    xor-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    iget-object v0, v1, Lhb/l;->j:Leb/h;

    .line 125
    .line 126
    invoke-static {v3, v0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Leb/h;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-void
.end method

.method private final G(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lib/j;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/view/Window;

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v4, v0, Lhb/l;->b:Lfb/b;

    .line 33
    .line 34
    invoke-virtual {v4}, Leb/d;->f()Llb/g;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Llb/g;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v11

    .line 42
    iget-object v4, v0, Lhb/l;->b:Lfb/b;

    .line 43
    .line 44
    invoke-virtual {v4}, Lfb/b;->j0()Lhb/n;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lhb/n;->e()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v13, 0x1

    .line 53
    const/4 v14, 0x0

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-direct {v0, v1, v3}, Lhb/l;->s0(Landroid/view/View;Landroid/view/Window;)Lcom/posthog/internal/replay/RRWireframe;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-static {v0, v1, v14, v13, v14}, Lhb/l;->v0(Lhb/l;Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-virtual {v3}, Lcom/posthog/internal/replay/RRWireframe;->getStyle()Lcom/posthog/internal/replay/RRStyle;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/posthog/internal/replay/RRStyle;->getBackgroundColor()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    move-object v4, v14

    .line 82
    :goto_0
    if-nez v4, :cond_7

    .line 83
    .line 84
    iget-object v4, v0, Lhb/l;->b:Lfb/b;

    .line 85
    .line 86
    invoke-virtual {v4}, Lfb/b;->j0()Lhb/n;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lhb/n;->e()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_7

    .line 95
    .line 96
    iget-object v4, v0, Lhb/l;->a:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_7

    .line 103
    .line 104
    invoke-direct {v0, v4}, Lhb/l;->p0(Landroid/content/res/Resources$Theme;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/posthog/internal/replay/RRWireframe;->getStyle()Lcom/posthog/internal/replay/RRStyle;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-nez v5, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {v5, v4}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundColor(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lib/j;->e()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_b

    .line 130
    .line 131
    invoke-static {v1}, Lgc/f;->a(Landroid/view/View;)Landroid/view/Window;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-eqz v5, :cond_8

    .line 136
    .line 137
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-eqz v5, :cond_8

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_8

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v5, :cond_8

    .line 154
    .line 155
    const-string v6, "/"

    .line 156
    .line 157
    const/4 v7, 0x2

    .line 158
    invoke-static {v5, v6, v14, v7, v14}, Lrd/n;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-nez v5, :cond_9

    .line 163
    .line 164
    :cond_8
    const-string v5, ""

    .line 165
    .line 166
    :cond_9
    move-object v10, v5

    .line 167
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const-string v6, "view.context"

    .line 172
    .line 173
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v5}, Lgb/o;->o(Landroid/content/Context;)Lgb/t;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-nez v5, :cond_a

    .line 181
    .line 182
    return-void

    .line 183
    :cond_a
    invoke-virtual {v5}, Lgb/t;->b()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    invoke-virtual {v5}, Lgb/t;->a()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    new-instance v15, Lcom/posthog/internal/replay/RRMetaEvent;

    .line 192
    .line 193
    move-object v5, v15

    .line 194
    move-wide v8, v11

    .line 195
    invoke-direct/range {v5 .. v10}, Lcom/posthog/internal/replay/RRMetaEvent;-><init>(IIJLjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v13}, Lib/j;->i(Z)V

    .line 202
    .line 203
    .line 204
    :cond_b
    invoke-virtual {v2}, Lib/j;->d()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-nez v5, :cond_c

    .line 209
    .line 210
    new-instance v14, Lcom/posthog/internal/replay/RRFullSnapshotEvent;

    .line 211
    .line 212
    invoke-static {v3}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v8, 0x0

    .line 218
    move-object v5, v14

    .line 219
    move-wide v9, v11

    .line 220
    invoke-direct/range {v5 .. v10}, Lcom/posthog/internal/replay/RRFullSnapshotEvent;-><init>(Ljava/util/List;IIJ)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v13}, Lib/j;->h(Z)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :cond_c
    invoke-virtual {v2}, Lib/j;->b()Lcom/posthog/internal/replay/RRWireframe;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-eqz v5, :cond_d

    .line 236
    .line 237
    invoke-static {v5}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    goto :goto_2

    .line 242
    :cond_d
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    :goto_2
    invoke-direct {v0, v5}, Lhb/l;->E(Ljava/util/List;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-static {v3}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-direct {v0, v6}, Lhb/l;->E(Ljava/util/List;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-direct {v0, v5, v6}, Lhb/l;->z(Ljava/util/List;Ljava/util/List;)Lxc/p;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v5}, Lxc/p;->a()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    check-cast v6, Ljava/util/List;

    .line 267
    .line 268
    invoke-virtual {v5}, Lxc/p;->b()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    check-cast v7, Ljava/util/List;

    .line 273
    .line 274
    invoke-virtual {v5}, Lxc/p;->c()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Ljava/util/List;

    .line 279
    .line 280
    new-instance v8, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    check-cast v6, Ljava/lang/Iterable;

    .line 286
    .line 287
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    if-eqz v9, :cond_e

    .line 296
    .line 297
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    check-cast v9, Lcom/posthog/internal/replay/RRWireframe;

    .line 302
    .line 303
    new-instance v10, Lcom/posthog/internal/replay/RRMutatedNode;

    .line 304
    .line 305
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v15

    .line 309
    invoke-direct {v10, v9, v15}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    check-cast v7, Ljava/lang/Iterable;

    .line 322
    .line 323
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    if-eqz v9, :cond_f

    .line 332
    .line 333
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    check-cast v9, Lcom/posthog/internal/replay/RRWireframe;

    .line 338
    .line 339
    new-instance v10, Lcom/posthog/internal/replay/RRRemovedNode;

    .line 340
    .line 341
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 342
    .line 343
    .line 344
    move-result v15

    .line 345
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    invoke-direct {v10, v15, v9}, Lcom/posthog/internal/replay/RRRemovedNode;-><init>(ILjava/lang/Integer;)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    check-cast v5, Ljava/lang/Iterable;

    .line 362
    .line 363
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_10

    .line 372
    .line 373
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    check-cast v9, Lcom/posthog/internal/replay/RRWireframe;

    .line 378
    .line 379
    new-instance v10, Lcom/posthog/internal/replay/RRMutatedNode;

    .line 380
    .line 381
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getParentId()Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v15

    .line 385
    invoke-direct {v10, v9, v15}, Lcom/posthog/internal/replay/RRMutatedNode;-><init>(Lcom/posthog/internal/replay/RRWireframe;Ljava/lang/Integer;)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_10
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    xor-int/2addr v5, v13

    .line 397
    if-nez v5, :cond_11

    .line 398
    .line 399
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    xor-int/2addr v5, v13

    .line 404
    if-nez v5, :cond_11

    .line 405
    .line 406
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    xor-int/2addr v5, v13

    .line 411
    if-eqz v5, :cond_15

    .line 412
    .line 413
    :cond_11
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-eqz v5, :cond_12

    .line 418
    .line 419
    move-object/from16 v16, v14

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_12
    move-object/from16 v16, v8

    .line 423
    .line 424
    :goto_6
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-eqz v5, :cond_13

    .line 429
    .line 430
    move-object/from16 v17, v14

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_13
    move-object/from16 v17, v6

    .line 434
    .line 435
    :goto_7
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    if-eqz v5, :cond_14

    .line 440
    .line 441
    move-object/from16 v18, v14

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_14
    move-object/from16 v18, v7

    .line 445
    .line 446
    :goto_8
    const/16 v19, 0x0

    .line 447
    .line 448
    const/16 v20, 0x8

    .line 449
    .line 450
    const/16 v21, 0x0

    .line 451
    .line 452
    new-instance v5, Lcom/posthog/internal/replay/RRIncrementalMutationData;

    .line 453
    .line 454
    move-object v15, v5

    .line 455
    invoke-direct/range {v15 .. v21}, Lcom/posthog/internal/replay/RRIncrementalMutationData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/posthog/internal/replay/RRIncrementalSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 456
    .line 457
    .line 458
    new-instance v6, Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;

    .line 459
    .line 460
    invoke-direct {v6, v5, v11, v12}, Lcom/posthog/internal/replay/RRIncrementalSnapshotEvent;-><init>(Lcom/posthog/internal/replay/RRIncrementalMutationData;J)V

    .line 461
    .line 462
    .line 463
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    :cond_15
    :goto_9
    invoke-virtual {v2}, Lib/j;->a()Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    invoke-direct {v0, v1, v5}, Lhb/l;->y(Landroid/view/View;Z)Lxc/k;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-virtual {v1}, Lxc/k;->a()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    check-cast v5, Ljava/lang/Boolean;

    .line 479
    .line 480
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    invoke-virtual {v1}, Lxc/k;->b()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Lcom/posthog/internal/replay/RRCustomEvent;

    .line 489
    .line 490
    invoke-virtual {v2, v5}, Lib/j;->f(Z)V

    .line 491
    .line 492
    .line 493
    if-eqz v1, :cond_16

    .line 494
    .line 495
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    :cond_16
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    xor-int/2addr v1, v13

    .line 503
    if-eqz v1, :cond_17

    .line 504
    .line 505
    iget-object v1, v0, Lhb/l;->j:Leb/h;

    .line 506
    .line 507
    invoke-static {v4, v1}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Leb/h;)V

    .line 508
    .line 509
    .line 510
    :cond_17
    invoke-virtual {v2, v3}, Lib/j;->g(Lcom/posthog/internal/replay/RRWireframe;)V

    .line 511
    .line 512
    .line 513
    return-void
.end method

.method private final H()Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l;->g:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    return-object v0
.end method

.method private final I()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l;->f:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method private final K(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1d

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p2}, Lhb/d;->a(Landroid/view/MotionEvent;I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_1
    return p1
.end method

.method private final L(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1d

    .line 13
    .line 14
    if-lt v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p2}, Lhb/e;->a(Landroid/view/MotionEvent;I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_1
    return p1
.end method

.method private final M(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lhb/l;->Y(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method static synthetic N(Lhb/l;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lhb/l;->M(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final O(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v1, :cond_1

    .line 31
    .line 32
    move p1, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v2

    .line 35
    :goto_1
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v1, v2

    .line 39
    :goto_2
    return v1
.end method

.method private final P(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhb/l;->X(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lhb/l;->b:Lfb/b;

    .line 8
    .line 9
    invoke-virtual {p1}, Lfb/b;->j0()Lhb/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lhb/n;->c()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method

.method private final Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l;->n:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final R(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lhb/l;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "this.javaClass.name"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    const-string v3, "AndroidComposeView"

    .line 24
    .line 25
    invoke-static {p1, v3, v1, v0, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_0
    return v1
.end method

.method private final S(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    :cond_1
    return v0
.end method

.method private final T()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->B()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "posthog-flutter"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method private final U(Landroid/view/View;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    instance-of v1, p2, Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p2, v2

    .line 17
    :goto_0
    const/4 v1, 0x2

    .line 18
    const-string v3, "ph-no-capture"

    .line 19
    .line 20
    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-static {p2, v3, v5, v1, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-ne p2, v0, :cond_1

    .line 41
    .line 42
    move p2, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p2, v5

    .line 45
    :goto_1
    if-nez p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-static {p1, v3, v5, v1, v2}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-ne p1, v0, :cond_2

    .line 75
    .line 76
    move p1, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move p1, v5

    .line 79
    :goto_2
    if-eqz p1, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move v0, v5

    .line 83
    :cond_4
    :goto_3
    return v0
.end method

.method static synthetic V(Lhb/l;Landroid/view/View;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lhb/l;->U(Landroid/view/View;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final W()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private final X(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfb/b;->j0()Lhb/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lhb/n;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lhb/l;->U(Landroid/view/View;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private final Y(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lhb/l;->O(Landroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lhb/l;->S(Landroid/view/View;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v1, 0x1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-ne p1, v1, :cond_0

    .line 62
    .line 63
    move p1, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move p1, v0

    .line 66
    :goto_0
    if-eqz p1, :cond_1

    .line 67
    .line 68
    move v0, v1

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    iget-object v1, p0, Lhb/l;->b:Lfb/b;

    .line 72
    .line 73
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "Session Replay view state check failed: "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/16 p1, 0x2e

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {v1, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_1
    return v0
.end method

.method private final Z(Landroid/view/View;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    move-object v1, p1

    .line 17
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v4, 0x1d

    .line 24
    .line 25
    if-lt v3, v4, :cond_1

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v3}, Ll1/c0;->a(Landroid/view/View;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    .line 37
    :goto_1
    move-object v4, v1

    .line 38
    check-cast v4, Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x0

    .line 45
    cmpg-float v4, v4, v5

    .line 46
    .line 47
    if-lez v4, :cond_3

    .line 48
    .line 49
    cmpg-float v3, v3, v5

    .line 50
    .line 51
    if-lez v3, :cond_3

    .line 52
    .line 53
    move-object v3, v1

    .line 54
    check-cast v3, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    check-cast v1, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return v2

    .line 71
    :cond_4
    new-instance v1, Landroid/graphics/Point;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v1}, Lhb/l;->M(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Rect;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move v0, v2

    .line 84
    :goto_3
    return v0

    .line 85
    :cond_6
    return v2

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    iget-object v1, p0, Lhb/l;->b:Lfb/b;

    .line 88
    .line 89
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "Session Replay isVisible failed: "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 p1, 0x2e

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {v1, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v0
.end method

.method public static synthetic a(Landroid/view/View;Lib/j;Lhb/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhb/l;->w(Landroid/view/View;Lib/j;Lhb/l;)V

    return-void
.end method

.method private final a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lrd/n;->z(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private final b0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lhb/l;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method private static final c0(Lhb/l;Landroid/view/View;Z)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lhb/l;->q(Landroid/view/View;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic d(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhb/l;->B(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    return-void
.end method

.method private static final d0(Lhb/l;Landroid/view/MotionEvent;Lid/l;)Lgc/b;
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "motionEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dispatch"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Leb/d;->f()Llb/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Llb/g;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :try_start_0
    invoke-interface {p2, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lgc/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    :try_start_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0}, Lhb/l;->I()Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lhb/i;

    .line 41
    .line 42
    invoke-direct {v3, p0, p1, v0, v1}, Lhb/i;-><init>(Lhb/l;Landroid/view/MotionEvent;J)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :catchall_0
    return-object p2

    .line 49
    :catchall_1
    move-exception p2

    .line 50
    iget-object p0, p0, Lhb/l;->b:Lfb/b;

    .line 51
    .line 52
    invoke-virtual {p0}, Leb/d;->o()Llb/i;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "TouchEventInterceptor "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " failed: "

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 p1, 0x2e

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2
.end method

.method public static synthetic e(Lhb/l;Landroid/view/MotionEvent;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhb/l;->e0(Lhb/l;Landroid/view/MotionEvent;J)V

    return-void
.end method

.method private static final e0(Lhb/l;Landroid/view/MotionEvent;J)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lhb/l;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    const-string v1, "safeMotionEvent"

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchEnd:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 34
    .line 35
    invoke-direct {p0, p2, p3, p1, v0}, Lhb/l;->F(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/posthog/internal/replay/RRMouseInteraction;->TouchStart:Lcom/posthog/internal/replay/RRMouseInteraction;

    .line 43
    .line 44
    invoke-direct {p0, p2, p3, p1, v0}, Lhb/l;->F(JLandroid/view/MotionEvent;Lcom/posthog/internal/replay/RRMouseInteraction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p2

    .line 52
    :try_start_3
    iget-object p0, p0, Lhb/l;->b:Lfb/b;

    .line 53
    .line 54
    invoke-virtual {p0}, Leb/d;->o()Llb/i;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v0, "Executor#OnTouchEventListener "

    .line 64
    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " failed: "

    .line 72
    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 p2, 0x2e

    .line 80
    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p0, p2}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_1
    return-void

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public static synthetic f(Lhb/l;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhb/l;->c0(Lhb/l;Landroid/view/View;Z)V

    return-void
.end method

.method private final f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lhb/l;->b:Lfb/b;

    .line 5
    .line 6
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic g(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lhb/l;->t0(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method

.method static synthetic g0(Lhb/l;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, "Session Replay screenshot discarded due to screen changes."

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic h(Lhb/l;Landroid/view/MotionEvent;Lid/l;)Lgc/b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lhb/l;->d0(Lhb/l;Landroid/view/MotionEvent;Lid/l;)Lgc/b;

    move-result-object p0

    return-object p0
.end method

.method private final h0(Lib/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lib/j;->h(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lib/j;->i(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lib/j;->f(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lib/j;->g(Lcom/posthog/internal/replay/RRWireframe;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic i(Lhb/l;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lhb/l;->G(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p1, p0, Lhb/l;->b:Lfb/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lfb/b;->j0()Lhb/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lhb/n;->b()Lhb/a;

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public static final synthetic j(Lhb/l;)Lfb/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lhb/l;->b:Lfb/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private final j0(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    .line 15
    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_2

    .line 20
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    .line 21
    .line 22
    :goto_2
    if-eqz v0, :cond_3

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_3

    .line 26
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 27
    .line 28
    :goto_3
    if-eqz v0, :cond_4

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    goto :goto_4

    .line 32
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "bitmap"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lgb/o;->n(Landroid/graphics/Bitmap;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_5
    :goto_4
    return v1
.end method

.method public static final synthetic k(Lhb/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lhb/l;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private final k0(Landroid/widget/ImageView;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfb/b;->j0()Lhb/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lhb/n;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lhb/l;->U(Landroid/view/View;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lhb/l;->j0(Landroid/graphics/drawable/Drawable;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    move p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v1

    .line 34
    :goto_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    move v1, v0

    .line 37
    :cond_1
    return v1
.end method

.method public static final synthetic l(Lhb/l;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private final l0(Landroid/widget/Spinner;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhb/l;->X(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public static final synthetic m(Lhb/l;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb/l;->I()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m0(Landroid/widget/TextView;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lhb/l;->X(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lhb/l;->e:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-int/2addr p1, v1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method public static final synthetic n(Lhb/l;)Lgb/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lhb/l;->c:Lgb/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private final n0(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-direct {p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance p3, Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p3, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "bitmap"

    .line 37
    .line 38
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method

.method public static final synthetic o(Lhb/l;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb/l;->T()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final o0(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/f0;->a:Lkotlin/jvm/internal/f0;

    .line 2
    .line 3
    const v0, 0xffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "#%06X"

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "format(format, *args)"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public static final synthetic p(Lhb/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb/l;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0(Landroid/content/res/Resources$Theme;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x1010054

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    .line 12
    .line 13
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 14
    .line 15
    const/16 v1, 0x1c

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-lt p1, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x1f

    .line 21
    .line 22
    if-gt p1, v1, :cond_0

    .line 23
    .line 24
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v2

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lhb/l;->o0(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_1
    return-object v2
.end method

.method private final q(Landroid/view/View;Z)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Lgc/f;->a(Landroid/view/View;)Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const-string v2, "peekDecorView()"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    move v3, v1

    .line 29
    :cond_0
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-static {p1}, Lgc/f;->c(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lhb/l;->b:Lfb/b;

    .line 41
    .line 42
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "Session Replay already has onDecorViewReady."

    .line 47
    .line 48
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    new-instance p1, Lhb/l$b;

    .line 53
    .line 54
    invoke-direct {p1, p0, v0}, Lhb/l$b;-><init>(Lhb/l;Landroid/view/Window;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lgc/f;->d(Landroid/view/Window;Lid/l;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lgc/f;->b(Landroid/view/Window;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/Collection;

    .line 65
    .line 66
    iget-object p2, p0, Lhb/l;->m:Lgc/e;

    .line 67
    .line 68
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lib/j;

    .line 88
    .line 89
    if-eqz p2, :cond_4

    .line 90
    .line 91
    const-string v0, "status"

    .line 92
    .line 93
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1, p2}, Lhb/l;->v(Landroid/view/View;Lib/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    iget-object p2, p0, Lhb/l;->b:Lfb/b;

    .line 102
    .line 103
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "Session Replay OnRootViewsChangedListener failed: "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 p1, 0x2e

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_1
    return-void
.end method

.method private final q0(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {p0, p1}, Lhb/l;->o0(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lhb/l;->J(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lhb/l;->q0(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    return-object v1

    .line 34
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lhb/l;->q0(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_3
    return-object v1

    .line 51
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    .line 52
    .line 53
    if-eqz v0, :cond_7

    .line 54
    .line 55
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    array-length v2, v0

    .line 64
    const/4 v3, 0x1

    .line 65
    const/4 v4, 0x0

    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    move v2, v4

    .line 71
    :goto_0
    xor-int/2addr v2, v3

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    aget p1, v0, v4

    .line 75
    .line 76
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-direct {p0, p1}, Lhb/l;->o0(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v2, -0x1

    .line 108
    if-eq v0, v2, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-direct {p0, p1}, Lhb/l;->o0(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :catchall_0
    :cond_7
    return-object v1
.end method

.method static synthetic r(Lhb/l;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lhb/l;->q(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final r0(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    float-to-int p1, p1

    .line 23
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private final s(Landroid/graphics/drawable/Drawable;IIZ)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lhb/l;->i0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0, v2, v1, v3}, Lgb/o;->t(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    if-nez p4, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lhb/l;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_1
    instance-of p4, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    :try_start_0
    move-object p4, p1

    .line 29
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    const-string v0, "clonedDrawable.bitmap"

    .line 36
    .line 37
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p4, v2, v1, v3}, Lgb/o;->t(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    return-object p1

    .line 45
    :cond_2
    instance-of p4, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 46
    .line 47
    if-eqz p4, :cond_3

    .line 48
    .line 49
    move-object p4, p1

    .line 50
    check-cast p4, Landroid/graphics/drawable/LayerDrawable;

    .line 51
    .line 52
    invoke-direct {p0, p4}, Lhb/l;->J(Landroid/graphics/drawable/LayerDrawable;)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    move-object v4, p0

    .line 62
    move v6, p2

    .line 63
    move v7, p3

    .line 64
    invoke-static/range {v4 .. v10}, Lhb/l;->t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    instance-of p4, p1, Landroid/graphics/drawable/InsetDrawable;

    .line 70
    .line 71
    if-eqz p4, :cond_4

    .line 72
    .line 73
    move-object p4, p1

    .line 74
    check-cast p4, Landroid/graphics/drawable/InsetDrawable;

    .line 75
    .line 76
    invoke-virtual {p4}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x4

    .line 84
    const/4 v10, 0x0

    .line 85
    move-object v4, p0

    .line 86
    move v6, p2

    .line 87
    move v7, p3

    .line 88
    invoke-static/range {v4 .. v10}, Lhb/l;->t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :catchall_0
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lhb/l;->n0(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1, v2, v1, v3}, Lgb/o;->t(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .line 103
    .line 104
    return-object p2

    .line 105
    :catchall_1
    return-object v3
.end method

.method private final s0(Landroid/view/View;Landroid/view/Window;)Lcom/posthog/internal/replay/RRWireframe;
    .locals 44

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v8, "bitmap"

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lhb/l;->Z(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v9, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v9

    .line 13
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    invoke-direct/range {p0 .. p1}, Lhb/l;->Y(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v10, 0x1

    .line 25
    const/4 v12, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object/from16 v5, p1

    .line 29
    .line 30
    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object/from16 v5, p1

    .line 35
    .line 36
    aput v12, v0, v12

    .line 37
    .line 38
    aput v12, v0, v10

    .line 39
    .line 40
    :goto_0
    aget v1, v0, v12

    .line 41
    .line 42
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .line 48
    invoke-static {v1, v2}, Lgb/o;->f(IF)I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    aget v0, v0, v10

    .line 53
    .line 54
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .line 60
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .line 74
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 75
    .line 76
    .line 77
    move-result v15

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 87
    .line 88
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 89
    .line 90
    .line 91
    move-result v22

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    .line 102
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 107
    .line 108
    invoke-direct {v4, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lkotlin/jvm/internal/z;

    .line 112
    .line 113
    invoke-direct {v3}, Lkotlin/jvm/internal/z;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-boolean v10, v3, Lkotlin/jvm/internal/z;->a:Z

    .line 117
    .line 118
    new-instance v2, Landroid/os/HandlerThread;

    .line 119
    .line 120
    const-string v0, "PostHogReplayScreenshot"

    .line 121
    .line 122
    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 126
    .line 127
    .line 128
    new-instance v0, Landroid/os/Handler;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x2e

    .line 138
    .line 139
    :try_start_0
    iput-boolean v12, v7, Lhb/l;->k:Z

    .line 140
    .line 141
    new-instance v9, Lhb/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .line 143
    move v10, v1

    .line 144
    move-object v1, v9

    .line 145
    move-object/from16 v18, v2

    .line 146
    .line 147
    move-object/from16 v2, p0

    .line 148
    .line 149
    move-object/from16 v19, v3

    .line 150
    .line 151
    move-object v3, v6

    .line 152
    move-object/from16 v20, v4

    .line 153
    .line 154
    move-object/from16 v4, v19

    .line 155
    .line 156
    move-object/from16 v5, p1

    .line 157
    .line 158
    move-object v12, v6

    .line 159
    move-object/from16 v6, v20

    .line 160
    .line 161
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lhb/j;-><init>(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v1, p2

    .line 165
    .line 166
    invoke-static {v1, v12, v9, v0}, Lhb/c;->a(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    move-object/from16 v1, v19

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    goto :goto_1

    .line 174
    :catchall_1
    move-exception v0

    .line 175
    move v10, v1

    .line 176
    move-object/from16 v18, v2

    .line 177
    .line 178
    move-object/from16 v19, v3

    .line 179
    .line 180
    move-object/from16 v20, v4

    .line 181
    .line 182
    move-object v12, v6

    .line 183
    :goto_1
    invoke-static {v12, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v2, "Session Replay PixelCopy failed: "

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v7, v12, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    .line 211
    .line 212
    move-object/from16 v1, v19

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    iput-boolean v2, v1, Lkotlin/jvm/internal/z;->a:Z

    .line 216
    .line 217
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 218
    .line 219
    .line 220
    :goto_2
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
    .line 222
    const-wide/16 v2, 0x3e8

    .line 223
    .line 224
    move-object/from16 v4, v20

    .line 225
    .line 226
    invoke-virtual {v4, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 227
    .line 228
    .line 229
    iget-boolean v0, v1, Lkotlin/jvm/internal/z;->a:Z

    .line 230
    .line 231
    if-eqz v0, :cond_2

    .line 232
    .line 233
    invoke-static {v12, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 234
    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    const/4 v2, 0x1

    .line 238
    const/4 v3, 0x0

    .line 239
    :try_start_3
    invoke-static {v12, v3, v2, v1}, Lgb/o;->t(Landroid/graphics/Bitmap;IILjava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    goto :goto_3

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    goto :goto_4

    .line 246
    :cond_2
    const/4 v1, 0x0

    .line 247
    const/4 v3, 0x0

    .line 248
    move-object v9, v1

    .line 249
    :goto_3
    iput-boolean v3, v7, Lhb/l;->k:Z

    .line 250
    .line 251
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    .line 256
    .line 257
    move-object v1, v9

    .line 258
    goto :goto_5

    .line 259
    :catchall_3
    move-exception v0

    .line 260
    const/4 v1, 0x0

    .line 261
    :goto_4
    :try_start_4
    invoke-static {v12, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v3, "Session Replay PixelCopy timed out: "

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-direct {v7, v12, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    iput-boolean v2, v7, Lhb/l;->k:Z

    .line 289
    .line 290
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    .line 295
    .line 296
    :goto_5
    new-instance v0, Lcom/posthog/internal/replay/RRWireframe;

    .line 297
    .line 298
    move-object v10, v0

    .line 299
    const/16 v16, 0x0

    .line 300
    .line 301
    const-string v17, "screenshot"

    .line 302
    .line 303
    const/16 v18, 0x0

    .line 304
    .line 305
    const/16 v19, 0x0

    .line 306
    .line 307
    const/16 v20, 0x0

    .line 308
    .line 309
    const/16 v21, 0x0

    .line 310
    .line 311
    new-instance v24, Lcom/posthog/internal/replay/RRStyle;

    .line 312
    .line 313
    move-object/from16 v23, v24

    .line 314
    .line 315
    const/16 v25, 0x0

    .line 316
    .line 317
    const/16 v26, 0x0

    .line 318
    .line 319
    const/16 v27, 0x0

    .line 320
    .line 321
    const/16 v28, 0x0

    .line 322
    .line 323
    const/16 v29, 0x0

    .line 324
    .line 325
    const/16 v30, 0x0

    .line 326
    .line 327
    const/16 v31, 0x0

    .line 328
    .line 329
    const/16 v32, 0x0

    .line 330
    .line 331
    const/16 v33, 0x0

    .line 332
    .line 333
    const/16 v34, 0x0

    .line 334
    .line 335
    const/16 v35, 0x0

    .line 336
    .line 337
    const/16 v36, 0x0

    .line 338
    .line 339
    const/16 v37, 0x0

    .line 340
    .line 341
    const/16 v38, 0x0

    .line 342
    .line 343
    const/16 v39, 0x0

    .line 344
    .line 345
    const/16 v40, 0x0

    .line 346
    .line 347
    const/16 v41, 0x0

    .line 348
    .line 349
    const v42, 0x1ffff

    .line 350
    .line 351
    .line 352
    const/16 v43, 0x0

    .line 353
    .line 354
    invoke-direct/range {v24 .. v43}, Lcom/posthog/internal/replay/RRStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 355
    .line 356
    .line 357
    const/16 v24, 0x0

    .line 358
    .line 359
    const v29, 0x3e7a0

    .line 360
    .line 361
    .line 362
    move v12, v13

    .line 363
    move v13, v14

    .line 364
    move v14, v15

    .line 365
    move/from16 v15, v22

    .line 366
    .line 367
    move-object/from16 v22, v1

    .line 368
    .line 369
    invoke-direct/range {v10 .. v30}, Lcom/posthog/internal/replay/RRWireframe;-><init>(IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 370
    .line 371
    .line 372
    return-object v0

    .line 373
    :catchall_4
    move-exception v0

    .line 374
    const/4 v1, 0x0

    .line 375
    iput-boolean v1, v7, Lhb/l;->k:Z

    .line 376
    .line 377
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    .line 378
    .line 379
    .line 380
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    .line 382
    .line 383
    throw v0
.end method

.method static synthetic t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lhb/l;->s(Landroid/graphics/drawable/Drawable;IIZ)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final t0(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v0, p5

    .line 8
    .line 9
    const-string v1, "this$0"

    .line 10
    .line 11
    invoke-static {v7, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "$success"

    .line 15
    .line 16
    invoke-static {v9, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "$view"

    .line 20
    .line 21
    move-object/from16 v2, p3

    .line 22
    .line 23
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "$latch"

    .line 27
    .line 28
    move-object/from16 v10, p4

    .line 29
    .line 30
    invoke-static {v10, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v11, "Session Replay PixelCopy failed: "

    .line 34
    .line 35
    const/16 v12, 0x2e

    .line 36
    .line 37
    const-string v13, "bitmap"

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    :try_start_0
    invoke-static {v8, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v7, v8, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_0
    iget-boolean v0, v7, Lhb/l;->k:Z

    .line 71
    .line 72
    const/4 v15, 0x2

    .line 73
    const/4 v6, 0x0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x4

    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    move-object/from16 v1, p0

    .line 86
    .line 87
    move-object/from16 v2, p3

    .line 88
    .line 89
    move-object v3, v0

    .line 90
    move-object v12, v6

    .line 91
    move-object/from16 v6, v16

    .line 92
    .line 93
    invoke-static/range {v1 .. v6}, Lhb/l;->D(Lhb/l;Landroid/view/View;Ljava/util/List;Ljava/util/Set;ILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-static {v8, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static/range {p1 .. p1}, Lgb/o;->n(Landroid/graphics/Bitmap;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_1

    .line 107
    .line 108
    const-string v0, "Session Replay Bitmap is invalid."

    .line 109
    .line 110
    invoke-direct {v7, v8, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    .line 115
    :goto_0
    iput-boolean v14, v7, Lhb/l;->k:Z

    .line 116
    .line 117
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    .line 122
    .line 123
    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Landroid/graphics/Rect;

    .line 141
    .line 142
    iget-boolean v3, v7, Lhb/l;->k:Z

    .line 143
    .line 144
    if-eqz v3, :cond_2

    .line 145
    .line 146
    invoke-static {v7, v8, v12, v15, v12}, Lhb/l;->g0(Lhb/l;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    .line 153
    .line 154
    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v7, Lhb/l;->h:Landroid/graphics/Paint;

    .line 158
    .line 159
    const/high16 v4, 0x41200000    # 10.0f

    .line 160
    .line 161
    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v2, "Session Replay Canvas creation failed: "

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/16 v2, 0x2e

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {v7, v8, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_3
    invoke-static {v8, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v7, v8, v12, v15, v12}, Lhb/l;->g0(Lhb/l;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    move-object v12, v6

    .line 204
    invoke-static {v8, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v8, v12, v15, v12}, Lhb/l;->g0(Lhb/l;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iput-boolean v14, v9, Lkotlin/jvm/internal/z;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    .line 212
    :cond_5
    :goto_2
    iput-boolean v14, v7, Lhb/l;->k:Z

    .line 213
    .line 214
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    :try_start_3
    invoke-static {v8, v13}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const/16 v2, 0x2e

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v7, v8, v0}, Lhb/l;->f0(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :goto_3
    return-void

    .line 247
    :catchall_2
    move-exception v0

    .line 248
    iput-boolean v14, v7, Lhb/l;->k:Z

    .line 249
    .line 250
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    .line 252
    .line 253
    throw v0
.end method

.method private final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "decorViews.entries"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "it.value"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v1, Lib/j;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lhb/l;->h0(Lib/j;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private final u0(Landroid/view/View;Ljava/lang/Integer;)Lcom/posthog/internal/replay/RRWireframe;
    .locals 42

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lhb/l;->Z(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v9, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v9

    .line 13
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    const/4 v10, 0x2

    .line 18
    new-array v0, v10, [I

    .line 19
    .line 20
    invoke-direct/range {p0 .. p1}, Lhb/l;->Y(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    aput v12, v0, v12

    .line 33
    .line 34
    aput v12, v0, v13

    .line 35
    .line 36
    :goto_0
    aget v1, v0, v12

    .line 37
    .line 38
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .line 44
    invoke-static {v1, v2}, Lgb/o;->f(IF)I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    aget v0, v0, v13

    .line 49
    .line 50
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .line 56
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 69
    .line 70
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 83
    .line 84
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 85
    .line 86
    .line 87
    move-result v17

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const v1, 0x102002f

    .line 93
    .line 94
    .line 95
    if-ne v0, v1, :cond_2

    .line 96
    .line 97
    const-string v0, "status_bar"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v0, v9

    .line 101
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const v2, 0x1020030

    .line 106
    .line 107
    .line 108
    if-ne v1, v2, :cond_3

    .line 109
    .line 110
    const-string v0, "navigation_bar"

    .line 111
    .line 112
    :cond_3
    move-object/from16 v18, v0

    .line 113
    .line 114
    new-instance v6, Lcom/posthog/internal/replay/RRStyle;

    .line 115
    .line 116
    move-object/from16 v19, v6

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    const/16 v22, 0x0

    .line 123
    .line 124
    const/16 v23, 0x0

    .line 125
    .line 126
    const/16 v24, 0x0

    .line 127
    .line 128
    const/16 v25, 0x0

    .line 129
    .line 130
    const/16 v26, 0x0

    .line 131
    .line 132
    const/16 v27, 0x0

    .line 133
    .line 134
    const/16 v28, 0x0

    .line 135
    .line 136
    const/16 v29, 0x0

    .line 137
    .line 138
    const/16 v30, 0x0

    .line 139
    .line 140
    const/16 v31, 0x0

    .line 141
    .line 142
    const/16 v32, 0x0

    .line 143
    .line 144
    const/16 v33, 0x0

    .line 145
    .line 146
    const/16 v34, 0x0

    .line 147
    .line 148
    const/16 v35, 0x0

    .line 149
    .line 150
    const/16 v36, 0x0

    .line 151
    .line 152
    const v37, 0x1ffff

    .line 153
    .line 154
    .line 155
    const/16 v38, 0x0

    .line 156
    .line 157
    invoke-direct/range {v19 .. v38}, Lcom/posthog/internal/replay/RRStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v1, :cond_5

    .line 165
    .line 166
    invoke-direct {v7, v1}, Lhb/l;->q0(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    invoke-virtual {v6, v0}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundColor(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move-object v0, v9

    .line 179
    :goto_2
    if-nez v0, :cond_5

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const/4 v4, 0x0

    .line 190
    const/4 v5, 0x4

    .line 191
    const/16 v19, 0x0

    .line 192
    .line 193
    move-object/from16 v0, p0

    .line 194
    .line 195
    move-object v9, v6

    .line 196
    move-object/from16 v6, v19

    .line 197
    .line 198
    invoke-static/range {v0 .. v6}, Lhb/l;->t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setBackgroundImage(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    move-object v9, v6

    .line 207
    :goto_3
    instance-of v0, v8, Landroid/widget/TextView;

    .line 208
    .line 209
    const-string v19, "input"

    .line 210
    .line 211
    if-eqz v0, :cond_22

    .line 212
    .line 213
    move-object v6, v8

    .line 214
    check-cast v6, Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    goto :goto_4

    .line 227
    :cond_6
    const/4 v0, 0x0

    .line 228
    :goto_4
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_7

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    move v1, v12

    .line 238
    goto :goto_6

    .line 239
    :cond_8
    :goto_5
    move v1, v13

    .line 240
    :goto_6
    if-nez v1, :cond_a

    .line 241
    .line 242
    invoke-direct {v7, v6}, Lhb/l;->m0(Landroid/widget/TextView;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_9

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_9
    invoke-direct {v7, v0}, Lhb/l;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    goto :goto_7

    .line 254
    :cond_a
    const/4 v0, 0x0

    .line 255
    :goto_7
    invoke-virtual {v6}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_8

    .line 266
    :cond_b
    const/4 v1, 0x0

    .line 267
    :goto_8
    if-eqz v0, :cond_d

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_c

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_c
    move v2, v12

    .line 277
    goto :goto_a

    .line 278
    :cond_d
    :goto_9
    move v2, v13

    .line 279
    :goto_a
    if-eqz v2, :cond_11

    .line 280
    .line 281
    if-eqz v1, :cond_f

    .line 282
    .line 283
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_e

    .line 288
    .line 289
    goto :goto_b

    .line 290
    :cond_e
    move v2, v12

    .line 291
    goto :goto_c

    .line 292
    :cond_f
    :goto_b
    move v2, v13

    .line 293
    :goto_c
    if-nez v2, :cond_11

    .line 294
    .line 295
    invoke-direct {v7, v6}, Lhb/l;->m0(Landroid/widget/TextView;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_10

    .line 300
    .line 301
    move-object v0, v1

    .line 302
    goto :goto_d

    .line 303
    :cond_10
    invoke-direct {v7, v1}, Lhb/l;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :cond_11
    :goto_d
    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-direct {v7, v1}, Lhb/l;->o0(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setColor(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    instance-of v1, v8, Landroid/widget/Button;

    .line 319
    .line 320
    if-eqz v1, :cond_12

    .line 321
    .line 322
    instance-of v1, v8, Landroid/widget/CompoundButton;

    .line 323
    .line 324
    if-nez v1, :cond_12

    .line 325
    .line 326
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setBorderWidth(Ljava/lang/Integer;)V

    .line 331
    .line 332
    .line 333
    const-string v1, "#000000"

    .line 334
    .line 335
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setBorderColor(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string v1, "button"

    .line 339
    .line 340
    move-object/from16 v21, v0

    .line 341
    .line 342
    move-object/from16 v22, v1

    .line 343
    .line 344
    move-object/from16 v23, v19

    .line 345
    .line 346
    const/16 v18, 0x0

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_12
    const-string v1, "text"

    .line 350
    .line 351
    move-object/from16 v18, v0

    .line 352
    .line 353
    move-object/from16 v23, v1

    .line 354
    .line 355
    const/16 v21, 0x0

    .line 356
    .line 357
    const/16 v22, 0x0

    .line 358
    .line 359
    :goto_e
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_16

    .line 364
    .line 365
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 366
    .line 367
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_13

    .line 372
    .line 373
    const-string v0, "sans-serif"

    .line 374
    .line 375
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_13
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 380
    .line 381
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_14

    .line 386
    .line 387
    const-string v0, "sans-serif-bold"

    .line 388
    .line 389
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_14
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 394
    .line 395
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_15

    .line 400
    .line 401
    const-string v0, "monospace"

    .line 402
    .line 403
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_15
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 408
    .line 409
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_16

    .line 414
    .line 415
    const-string v0, "serif"

    .line 416
    .line 417
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setFontFamily(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :cond_16
    :goto_f
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    float-to-int v0, v0

    .line 425
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 430
    .line 431
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setFontSize(Ljava/lang/Integer;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getTextAlignment()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    const-string v1, "right"

    .line 447
    .line 448
    const-string v2, "left"

    .line 449
    .line 450
    const-string v5, "center"

    .line 451
    .line 452
    packed-switch v0, :pswitch_data_0

    .line 453
    .line 454
    .line 455
    invoke-virtual {v9, v5}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v2}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto :goto_13

    .line 462
    :pswitch_0
    invoke-virtual {v9, v5}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v9, v5}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_13

    .line 469
    :pswitch_1
    invoke-virtual {v9, v5}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto :goto_13

    .line 476
    :pswitch_2
    invoke-virtual {v9, v5}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9, v2}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto :goto_13

    .line 483
    :pswitch_3
    invoke-virtual {v6}, Landroid/widget/TextView;->getGravity()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    and-int/lit8 v0, v0, 0x7

    .line 488
    .line 489
    const/16 v3, 0x11

    .line 490
    .line 491
    if-eq v0, v13, :cond_18

    .line 492
    .line 493
    const/4 v4, 0x3

    .line 494
    if-eq v0, v4, :cond_17

    .line 495
    .line 496
    const/4 v4, 0x5

    .line 497
    if-eq v0, v4, :cond_19

    .line 498
    .line 499
    if-eq v0, v3, :cond_18

    .line 500
    .line 501
    const v4, 0x800003

    .line 502
    .line 503
    .line 504
    if-eq v0, v4, :cond_17

    .line 505
    .line 506
    const v4, 0x800005

    .line 507
    .line 508
    .line 509
    if-eq v0, v4, :cond_19

    .line 510
    .line 511
    :cond_17
    move-object v1, v2

    .line 512
    goto :goto_10

    .line 513
    :cond_18
    move-object v1, v5

    .line 514
    :cond_19
    :goto_10
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setHorizontalAlign(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6}, Landroid/widget/TextView;->getGravity()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    and-int/lit8 v0, v0, 0x70

    .line 522
    .line 523
    const/16 v1, 0x10

    .line 524
    .line 525
    if-eq v0, v1, :cond_1c

    .line 526
    .line 527
    if-eq v0, v3, :cond_1c

    .line 528
    .line 529
    const/16 v1, 0x30

    .line 530
    .line 531
    if-eq v0, v1, :cond_1b

    .line 532
    .line 533
    const/16 v1, 0x50

    .line 534
    .line 535
    if-eq v0, v1, :cond_1a

    .line 536
    .line 537
    goto :goto_11

    .line 538
    :cond_1a
    const-string v0, "bottom"

    .line 539
    .line 540
    goto :goto_12

    .line 541
    :cond_1b
    const-string v0, "top"

    .line 542
    .line 543
    goto :goto_12

    .line 544
    :cond_1c
    :goto_11
    move-object v0, v5

    .line 545
    :goto_12
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setVerticalAlign(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :goto_13
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    const-string v0, "view.compoundDrawables"

    .line 553
    .line 554
    invoke-static {v4, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    array-length v3, v4

    .line 558
    move v1, v12

    .line 559
    move v2, v1

    .line 560
    :goto_14
    if-ge v2, v3, :cond_20

    .line 561
    .line 562
    aget-object v0, v4, v2

    .line 563
    .line 564
    add-int/lit8 v24, v1, 0x1

    .line 565
    .line 566
    if-eqz v0, :cond_1f

    .line 567
    .line 568
    const-string v12, "drawable"

    .line 569
    .line 570
    invoke-static {v0, v12}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 574
    .line 575
    .line 576
    move-result v12

    .line 577
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 578
    .line 579
    .line 580
    move-result v26

    .line 581
    const/16 v27, 0x0

    .line 582
    .line 583
    const/16 v28, 0x4

    .line 584
    .line 585
    const/16 v29, 0x0

    .line 586
    .line 587
    move-object/from16 v30, v0

    .line 588
    .line 589
    move-object/from16 v0, p0

    .line 590
    .line 591
    move v13, v1

    .line 592
    move-object/from16 v1, v30

    .line 593
    .line 594
    move/from16 v30, v2

    .line 595
    .line 596
    move v2, v12

    .line 597
    move v12, v3

    .line 598
    move/from16 v3, v26

    .line 599
    .line 600
    move-object/from16 v26, v4

    .line 601
    .line 602
    move/from16 v4, v27

    .line 603
    .line 604
    move-object/from16 v39, v5

    .line 605
    .line 606
    move/from16 v5, v28

    .line 607
    .line 608
    move-object/from16 v27, v6

    .line 609
    .line 610
    move-object/from16 v6, v29

    .line 611
    .line 612
    invoke-static/range {v0 .. v6}, Lhb/l;->t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    if-eqz v13, :cond_1e

    .line 617
    .line 618
    if-eq v13, v10, :cond_1d

    .line 619
    .line 620
    goto :goto_15

    .line 621
    :cond_1d
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setIconRight(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    goto :goto_15

    .line 625
    :cond_1e
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setIconLeft(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_1f
    move/from16 v30, v2

    .line 630
    .line 631
    move v12, v3

    .line 632
    move-object/from16 v26, v4

    .line 633
    .line 634
    move-object/from16 v39, v5

    .line 635
    .line 636
    move-object/from16 v27, v6

    .line 637
    .line 638
    :goto_15
    add-int/lit8 v2, v30, 0x1

    .line 639
    .line 640
    move v3, v12

    .line 641
    move/from16 v1, v24

    .line 642
    .line 643
    move-object/from16 v4, v26

    .line 644
    .line 645
    move-object/from16 v6, v27

    .line 646
    .line 647
    move-object/from16 v5, v39

    .line 648
    .line 649
    const/4 v12, 0x0

    .line 650
    const/4 v13, 0x1

    .line 651
    goto :goto_14

    .line 652
    :cond_20
    move-object/from16 v39, v5

    .line 653
    .line 654
    move-object/from16 v27, v6

    .line 655
    .line 656
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRStyle;->getVerticalAlign()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    move-object/from16 v1, v39

    .line 661
    .line 662
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-nez v0, :cond_21

    .line 667
    .line 668
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 677
    .line 678
    invoke-static {v0, v2}, Lgb/o;->f(IF)I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setPaddingTop(Ljava/lang/Integer;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 698
    .line 699
    invoke-static {v0, v2}, Lgb/o;->f(IF)I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setPaddingBottom(Ljava/lang/Integer;)V

    .line 708
    .line 709
    .line 710
    :cond_21
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRStyle;->getHorizontalAlign()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-nez v0, :cond_23

    .line 719
    .line 720
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 729
    .line 730
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setPaddingLeft(Ljava/lang/Integer;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingRight()I

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    invoke-direct/range {p0 .. p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 750
    .line 751
    invoke-static {v0, v1}, Lgb/o;->f(IF)I

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-virtual {v9, v0}, Lcom/posthog/internal/replay/RRStyle;->setPaddingRight(Ljava/lang/Integer;)V

    .line 760
    .line 761
    .line 762
    goto :goto_16

    .line 763
    :cond_22
    move-object/from16 v23, v18

    .line 764
    .line 765
    const/16 v18, 0x0

    .line 766
    .line 767
    const/16 v21, 0x0

    .line 768
    .line 769
    const/16 v22, 0x0

    .line 770
    .line 771
    :cond_23
    :goto_16
    instance-of v0, v8, Landroid/widget/CheckBox;

    .line 772
    .line 773
    if-eqz v0, :cond_24

    .line 774
    .line 775
    move-object v0, v8

    .line 776
    check-cast v0, Landroid/widget/CheckBox;

    .line 777
    .line 778
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    const-string v22, "checkbox"

    .line 787
    .line 788
    move-object/from16 v1, v18

    .line 789
    .line 790
    move-object/from16 v23, v19

    .line 791
    .line 792
    const/16 v18, 0x0

    .line 793
    .line 794
    goto :goto_17

    .line 795
    :cond_24
    const/4 v0, 0x0

    .line 796
    const/4 v1, 0x0

    .line 797
    :goto_17
    instance-of v2, v8, Landroid/widget/RadioGroup;

    .line 798
    .line 799
    if-eqz v2, :cond_25

    .line 800
    .line 801
    const-string v23, "radio_group"

    .line 802
    .line 803
    :cond_25
    instance-of v2, v8, Landroid/widget/RadioButton;

    .line 804
    .line 805
    if-eqz v2, :cond_26

    .line 806
    .line 807
    move-object v0, v8

    .line 808
    check-cast v0, Landroid/widget/RadioButton;

    .line 809
    .line 810
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    const-string v22, "radio"

    .line 819
    .line 820
    move-object v12, v0

    .line 821
    move-object/from16 v13, v18

    .line 822
    .line 823
    move-object/from16 v23, v19

    .line 824
    .line 825
    const/16 v18, 0x0

    .line 826
    .line 827
    goto :goto_18

    .line 828
    :cond_26
    move-object v12, v0

    .line 829
    move-object v13, v1

    .line 830
    :goto_18
    instance-of v0, v8, Landroid/widget/EditText;

    .line 831
    .line 832
    if-eqz v0, :cond_27

    .line 833
    .line 834
    const-string v22, "text_area"

    .line 835
    .line 836
    move-object/from16 v21, v18

    .line 837
    .line 838
    move-object/from16 v23, v19

    .line 839
    .line 840
    const/16 v18, 0x0

    .line 841
    .line 842
    :cond_27
    new-instance v6, Lkotlin/jvm/internal/c0;

    .line 843
    .line 844
    invoke-direct {v6}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 845
    .line 846
    .line 847
    instance-of v0, v8, Landroid/widget/Spinner;

    .line 848
    .line 849
    if-eqz v0, :cond_30

    .line 850
    .line 851
    move-object v0, v8

    .line 852
    check-cast v0, Landroid/widget/Spinner;

    .line 853
    .line 854
    invoke-direct {v7, v0}, Lhb/l;->l0(Landroid/widget/Spinner;)Z

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    if-eqz v2, :cond_29

    .line 863
    .line 864
    if-nez v1, :cond_28

    .line 865
    .line 866
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    goto :goto_19

    .line 871
    :cond_28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-direct {v7, v2}, Lhb/l;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    :goto_19
    move-object/from16 v21, v2

    .line 880
    .line 881
    :cond_29
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    if-eqz v0, :cond_2f

    .line 886
    .line 887
    new-instance v2, Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .line 891
    .line 892
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    const/4 v4, 0x0

    .line 897
    :goto_1a
    if-ge v4, v3, :cond_2d

    .line 898
    .line 899
    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v5

    .line 903
    if-eqz v5, :cond_2c

    .line 904
    .line 905
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    if-nez v5, :cond_2a

    .line 910
    .line 911
    goto :goto_1c

    .line 912
    :cond_2a
    if-nez v1, :cond_2b

    .line 913
    .line 914
    goto :goto_1b

    .line 915
    :cond_2b
    invoke-direct {v7, v5}, Lhb/l;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    :goto_1b
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    :cond_2c
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    .line 923
    .line 924
    goto :goto_1a

    .line 925
    :cond_2d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    if-eqz v0, :cond_2e

    .line 930
    .line 931
    const/4 v2, 0x0

    .line 932
    :cond_2e
    iput-object v2, v6, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 933
    .line 934
    :cond_2f
    const-string v22, "select"

    .line 935
    .line 936
    move-object/from16 v23, v19

    .line 937
    .line 938
    :cond_30
    instance-of v0, v8, Landroid/widget/ImageView;

    .line 939
    .line 940
    if-eqz v0, :cond_31

    .line 941
    .line 942
    move-object v0, v8

    .line 943
    check-cast v0, Landroid/widget/ImageView;

    .line 944
    .line 945
    invoke-direct {v7, v0}, Lhb/l;->k0(Landroid/widget/ImageView;)Z

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    const-string v23, "image"

    .line 950
    .line 951
    if-nez v1, :cond_31

    .line 952
    .line 953
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    if-eqz v1, :cond_31

    .line 958
    .line 959
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    const/4 v4, 0x0

    .line 968
    const/4 v5, 0x4

    .line 969
    const/16 v24, 0x0

    .line 970
    .line 971
    move-object/from16 v0, p0

    .line 972
    .line 973
    move-object/from16 v40, v6

    .line 974
    .line 975
    move-object/from16 v6, v24

    .line 976
    .line 977
    invoke-static/range {v0 .. v6}, Lhb/l;->t(Lhb/l;Landroid/graphics/drawable/Drawable;IIZILjava/lang/Object;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    goto :goto_1d

    .line 982
    :cond_31
    move-object/from16 v40, v6

    .line 983
    .line 984
    const/4 v0, 0x0

    .line 985
    :goto_1d
    instance-of v1, v8, Landroid/widget/ProgressBar;

    .line 986
    .line 987
    if-eqz v1, :cond_33

    .line 988
    .line 989
    move-object v1, v8

    .line 990
    check-cast v1, Landroid/widget/ProgressBar;

    .line 991
    .line 992
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    if-eqz v2, :cond_32

    .line 997
    .line 998
    const-string v1, "circular"

    .line 999
    .line 1000
    const/4 v2, 0x0

    .line 1001
    goto :goto_1e

    .line 1002
    :cond_32
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v21

    .line 1018
    const-string v1, "horizontal"

    .line 1019
    .line 1020
    :goto_1e
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setBar(Ljava/lang/String;)V

    .line 1021
    .line 1022
    .line 1023
    const-string v22, "progress"

    .line 1024
    .line 1025
    move-object/from16 v23, v19

    .line 1026
    .line 1027
    goto :goto_1f

    .line 1028
    :cond_33
    const/4 v2, 0x0

    .line 1029
    :goto_1f
    instance-of v1, v8, Landroid/widget/RatingBar;

    .line 1030
    .line 1031
    if-eqz v1, :cond_34

    .line 1032
    .line 1033
    const-string v1, "rating"

    .line 1034
    .line 1035
    invoke-virtual {v9, v1}, Lcom/posthog/internal/replay/RRStyle;->setBar(Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    move-object v1, v8

    .line 1039
    check-cast v1, Landroid/widget/RatingBar;

    .line 1040
    .line 1041
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    div-int/2addr v2, v10

    .line 1046
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    .line 1051
    .line 1052
    .line 1053
    move-result v1

    .line 1054
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    move-object/from16 v21, v1

    .line 1059
    .line 1060
    :cond_34
    move-object/from16 v28, v2

    .line 1061
    .line 1062
    instance-of v1, v8, Landroid/widget/Switch;

    .line 1063
    .line 1064
    if-eqz v1, :cond_35

    .line 1065
    .line 1066
    move-object v1, v8

    .line 1067
    check-cast v1, Landroid/widget/Switch;

    .line 1068
    .line 1069
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1070
    .line 1071
    .line 1072
    move-result v1

    .line 1073
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v1

    .line 1077
    const-string v2, "toggle"

    .line 1078
    .line 1079
    move-object v3, v1

    .line 1080
    const/4 v1, 0x0

    .line 1081
    move-object/from16 v41, v18

    .line 1082
    .line 1083
    move-object/from16 v18, v2

    .line 1084
    .line 1085
    move-object/from16 v2, v41

    .line 1086
    .line 1087
    goto :goto_20

    .line 1088
    :cond_35
    move-object v3, v12

    .line 1089
    move-object v2, v13

    .line 1090
    move-object/from16 v1, v18

    .line 1091
    .line 1092
    move-object/from16 v18, v22

    .line 1093
    .line 1094
    move-object/from16 v19, v23

    .line 1095
    .line 1096
    :goto_20
    instance-of v4, v8, Landroid/webkit/WebView;

    .line 1097
    .line 1098
    if-eqz v4, :cond_36

    .line 1099
    .line 1100
    const-string v4, "web_view"

    .line 1101
    .line 1102
    move-object/from16 v19, v4

    .line 1103
    .line 1104
    :cond_36
    new-instance v4, Ljava/util/ArrayList;

    .line 1105
    .line 1106
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    instance-of v5, v8, Landroid/view/ViewGroup;

    .line 1110
    .line 1111
    if-eqz v5, :cond_39

    .line 1112
    .line 1113
    move-object v5, v8

    .line 1114
    check-cast v5, Landroid/view/ViewGroup;

    .line 1115
    .line 1116
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1117
    .line 1118
    .line 1119
    move-result v6

    .line 1120
    if-lez v6, :cond_39

    .line 1121
    .line 1122
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1123
    .line 1124
    .line 1125
    move-result v6

    .line 1126
    const/4 v12, 0x0

    .line 1127
    :goto_21
    if-ge v12, v6, :cond_39

    .line 1128
    .line 1129
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v10

    .line 1133
    if-nez v10, :cond_37

    .line 1134
    .line 1135
    goto :goto_22

    .line 1136
    :cond_37
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v13

    .line 1140
    invoke-direct {v7, v10, v13}, Lhb/l;->u0(Landroid/view/View;Ljava/lang/Integer;)Lcom/posthog/internal/replay/RRWireframe;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v10

    .line 1144
    if-eqz v10, :cond_38

    .line 1145
    .line 1146
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    :cond_38
    :goto_22
    add-int/lit8 v12, v12, 0x1

    .line 1150
    .line 1151
    goto :goto_21

    .line 1152
    :cond_39
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v5

    .line 1156
    if-eqz v5, :cond_3a

    .line 1157
    .line 1158
    const/4 v4, 0x0

    .line 1159
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isEnabled()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v5

    .line 1163
    const/4 v6, 0x1

    .line 1164
    xor-int/2addr v5, v6

    .line 1165
    move-object/from16 v6, v40

    .line 1166
    .line 1167
    iget-object v6, v6, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 1168
    .line 1169
    move-object/from16 v26, v6

    .line 1170
    .line 1171
    check-cast v26, Ljava/util/List;

    .line 1172
    .line 1173
    new-instance v6, Lcom/posthog/internal/replay/RRWireframe;

    .line 1174
    .line 1175
    move-object v10, v6

    .line 1176
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v24

    .line 1180
    move v12, v14

    .line 1181
    move v13, v15

    .line 1182
    move/from16 v14, v16

    .line 1183
    .line 1184
    move/from16 v15, v17

    .line 1185
    .line 1186
    move-object/from16 v16, v4

    .line 1187
    .line 1188
    move-object/from16 v17, v19

    .line 1189
    .line 1190
    move-object/from16 v19, v1

    .line 1191
    .line 1192
    move-object/from16 v20, v2

    .line 1193
    .line 1194
    move-object/from16 v22, v0

    .line 1195
    .line 1196
    move-object/from16 v23, v9

    .line 1197
    .line 1198
    move-object/from16 v25, v3

    .line 1199
    .line 1200
    move-object/from16 v27, p2

    .line 1201
    .line 1202
    invoke-direct/range {v10 .. v28}, Lcom/posthog/internal/replay/RRWireframe;-><init>(IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1203
    .line 1204
    .line 1205
    return-object v6

    .line 1206
    nop

    .line 1207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final v(Landroid/view/View;Lib/j;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lib/e;->b(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lhb/l;->c:Lgb/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lgb/b;->a()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lhb/h;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, p0}, Lhb/h;-><init>(Landroid/view/View;Lib/j;Lhb/l;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Lgc/f;->a(Landroid/view/View;)Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-static {p2}, Lgc/f;->b(Landroid/view/Window;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/util/Collection;

    .line 32
    .line 33
    iget-object v0, p0, Lhb/l;->m:Lgc/e;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method static synthetic v0(Lhb/l;Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lhb/l;->u0(Landroid/view/View;Ljava/lang/Integer;)Lcom/posthog/internal/replay/RRWireframe;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final w(Landroid/view/View;Lib/j;Lhb/l;)V
    .locals 1

    .line 1
    const-string v0, "$view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$status"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "this$0"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lib/e;->b(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lib/j;->c()Lib/d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    iget-object p1, p2, Lhb/l;->b:Lfb/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "Removing the viewTreeObserver failed: "

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p0, 0x2e

    .line 57
    .line 58
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p1, p0}, Llb/i;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    return-void
.end method

.method private final x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method private final y(Landroid/view/View;Z)Lxc/k;
    .locals 4

    .line 1
    invoke-static {p1}, Ld0/p0;->x(Landroid/view/View;)Ld0/c1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lxc/k;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2, v0}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-static {}, Ld0/c1$l;->c()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1, v1}, Ld0/c1;->o(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lxc/k;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2, v0}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "open"

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {}, Ld0/c1$l;->c()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Ld0/c1;->f(I)Lv/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget p1, p1, Lv/b;->d:I

    .line 56
    .line 57
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lhb/l;->H()Landroid/util/DisplayMetrics;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    .line 68
    invoke-static {p1, v0}, Lgb/o;->f(IF)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "height"

    .line 77
    .line 78
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :goto_0
    new-instance p1, Lcom/posthog/internal/replay/RRCustomEvent;

    .line 88
    .line 89
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 90
    .line 91
    invoke-virtual {v0}, Leb/d;->f()Llb/g;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Llb/g;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    const-string v0, "keyboard"

    .line 100
    .line 101
    invoke-direct {p1, v0, p2, v2, v3}, Lcom/posthog/internal/replay/RRCustomEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lxc/k;

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p2, v0, p1}, Lxc/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-object p2
.end method

.method private final z(Ljava/util/List;Ljava/util/List;)Lxc/p;
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    invoke-static {v0, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Lyc/e0;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x10

    .line 16
    .line 17
    invoke-static {v2, v3}, Lod/g;->b(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v6, v5

    .line 41
    check-cast v6, Lcom/posthog/internal/replay/RRWireframe;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object/from16 v2, p2

    .line 56
    .line 57
    check-cast v2, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-static {v2, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Lyc/e0;->b(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v5, v3}, Lod/g;->b(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    move-object v7, v6

    .line 91
    check-cast v7, Lcom/posthog/internal/replay/RRWireframe;

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-static {v0, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lcom/posthog/internal/replay/RRWireframe;

    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    .line 143
    .line 144
    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-static {v2, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_3

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Lcom/posthog/internal/replay/RRWireframe;

    .line 171
    .line 172
    invoke-virtual {v7}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v6}, Lyc/k0;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    new-instance v7, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_5

    .line 207
    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    move-object v9, v8

    .line 213
    check-cast v9, Lcom/posthog/internal/replay/RRWireframe;

    .line 214
    .line 215
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_4

    .line 228
    .line 229
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_5
    invoke-static {v6, v1}, Lyc/k0;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_7

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    move-object v9, v8

    .line 257
    check-cast v9, Lcom/posthog/internal/replay/RRWireframe;

    .line 258
    .line 259
    invoke-virtual {v9}, Lcom/posthog/internal/replay/RRWireframe;->getId()I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-eqz v9, :cond_6

    .line 272
    .line 273
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-static {v6, v1}, Lyc/m;->T(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_b

    .line 295
    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Ljava/lang/Integer;

    .line 301
    .line 302
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    move-object v8, v6

    .line 307
    check-cast v8, Lcom/posthog/internal/replay/RRWireframe;

    .line 308
    .line 309
    if-eqz v8, :cond_8

    .line 310
    .line 311
    const/4 v9, 0x0

    .line 312
    const/4 v10, 0x0

    .line 313
    const/4 v11, 0x0

    .line 314
    const/4 v12, 0x0

    .line 315
    const/4 v13, 0x0

    .line 316
    const/4 v14, 0x0

    .line 317
    const/4 v15, 0x0

    .line 318
    const/16 v16, 0x0

    .line 319
    .line 320
    const/16 v17, 0x0

    .line 321
    .line 322
    const/16 v18, 0x0

    .line 323
    .line 324
    const/16 v19, 0x0

    .line 325
    .line 326
    const/16 v20, 0x0

    .line 327
    .line 328
    const/16 v21, 0x0

    .line 329
    .line 330
    const/16 v22, 0x0

    .line 331
    .line 332
    const/16 v23, 0x0

    .line 333
    .line 334
    const/16 v24, 0x0

    .line 335
    .line 336
    const/16 v25, 0x0

    .line 337
    .line 338
    const/16 v26, 0x0

    .line 339
    .line 340
    const v27, 0x3ffdf

    .line 341
    .line 342
    .line 343
    const/16 v28, 0x0

    .line 344
    .line 345
    invoke-static/range {v8 .. v28}, Lcom/posthog/internal/replay/RRWireframe;->copy$default(Lcom/posthog/internal/replay/RRWireframe;IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    if-nez v6, :cond_9

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_9
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lcom/posthog/internal/replay/RRWireframe;

    .line 357
    .line 358
    if-nez v2, :cond_a

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_a
    const/4 v9, 0x0

    .line 362
    const/4 v10, 0x0

    .line 363
    const/4 v11, 0x0

    .line 364
    const/4 v12, 0x0

    .line 365
    const/4 v13, 0x0

    .line 366
    const/4 v14, 0x0

    .line 367
    const/4 v15, 0x0

    .line 368
    const/16 v16, 0x0

    .line 369
    .line 370
    const/16 v17, 0x0

    .line 371
    .line 372
    const/16 v18, 0x0

    .line 373
    .line 374
    const/16 v19, 0x0

    .line 375
    .line 376
    const/16 v20, 0x0

    .line 377
    .line 378
    const/16 v21, 0x0

    .line 379
    .line 380
    const/16 v22, 0x0

    .line 381
    .line 382
    const/16 v23, 0x0

    .line 383
    .line 384
    const/16 v24, 0x0

    .line 385
    .line 386
    const/16 v25, 0x0

    .line 387
    .line 388
    const/16 v26, 0x0

    .line 389
    .line 390
    const v27, 0x3ffdf

    .line 391
    .line 392
    .line 393
    const/16 v28, 0x0

    .line 394
    .line 395
    move-object v8, v2

    .line 396
    invoke-static/range {v8 .. v28}, Lcom/posthog/internal/replay/RRWireframe;->copy$default(Lcom/posthog/internal/replay/RRWireframe;IIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/posthog/internal/replay/RRStyle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/internal/replay/RRWireframe;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-static {v6, v8}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-nez v6, :cond_8

    .line 405
    .line 406
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_b
    new-instance v1, Lxc/p;

    .line 411
    .line 412
    invoke-direct {v1, v7, v3, v0}, Lxc/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    return-object v1
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lhb/l;->p:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lhb/l;->j:Leb/h;

    .line 6
    .line 7
    invoke-static {}, Lgc/a;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    iget-object v2, p0, Lhb/l;->l:Lgc/d;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "decorViews.entries"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "it.key"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast v3, Landroid/view/View;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v4, "it.value"

    .line 61
    .line 62
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast v2, Lib/j;

    .line 66
    .line 67
    invoke-direct {p0, v3, v2}, Lhb/l;->v(Landroid/view/View;Lib/j;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iput-boolean v0, p0, Lhb/l;->i:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lhb/l;->k:Z

    .line 74
    .line 75
    invoke-direct {p0}, Lhb/l;->u()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lhb/l;->d:Ljava/util/WeakHashMap;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lhb/l;->b:Lfb/b;

    .line 86
    .line 87
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "Session Replay uninstall failed: "

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v0, 0x2e

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void
.end method

.method public c(Leb/h;)V
    .locals 4

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lhb/l;->p:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-direct {p0}, Lhb/l;->W()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lhb/l;->p:Z

    .line 19
    .line 20
    iput-object p1, p0, Lhb/l;->j:Leb/h;

    .line 21
    .line 22
    invoke-static {}, Lgc/a;->b()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/View;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {p0, v0, v3, v1, v2}, Lhb/l;->r(Lhb/l;Landroid/view/View;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    invoke-static {}, Lgc/a;->a()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/util/Collection;

    .line 56
    .line 57
    iget-object v0, p0, Lhb/l;->l:Lgc/d;

    .line 58
    .line 59
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    iget-object v0, p0, Lhb/l;->b:Lfb/b;

    .line 65
    .line 66
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "Session Replay setup failed: "

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p1, 0x2e

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhb/l;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public start(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lhb/l;->u()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lhb/l;->i:Z

    .line 8
    .line 9
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lhb/l;->i:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lhb/l;->k:Z

    .line 5
    .line 6
    return-void
.end method
