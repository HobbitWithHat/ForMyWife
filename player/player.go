components {
  id: "script"
  component: "/player/player.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"idle_down\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/characters/Friday.tilesource\"\n"
  "}\n"
  ""
  position {
    y: 13.0
    z: 0.1
  }
}
embedded_components {
  id: "collider"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"interact\"\n"
  "mask: \"static\"\n"
  "mask: \"world\"\n"
  "mask: \"npc\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"body\"\n"
  "  }\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "}\n"
  "locked_rotation: true\n"
  ""
}
embedded_components {
  id: "factory"
  type: "factory"
  data: "prototype: \"/objects/item.go\"\n"
  ""
}
